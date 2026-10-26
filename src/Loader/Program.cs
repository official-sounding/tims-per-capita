
using System.Data;
using System.Text.Json;
using Dapper;
using Microsoft.Data.Sqlite;

var timsStr = await File.ReadAllTextAsync("../../geocoded-all_tims_across_canada-2024-10-13.geojson");
var popStr = await File.ReadAllTextAsync("../../canada-cities-by-population-2026.json");

var opts = new JsonSerializerOptions(JsonSerializerOptions.Default) { PropertyNameCaseInsensitive = true };

var tims = JsonSerializer.Deserialize<Collection>(timsStr, opts)!.Features;
var pop = JsonSerializer.Deserialize<List<PopulationRecord>>(popStr, opts)!;

using var connection = new SqliteConnection("Data Source=../../tims.db");
connection.Open();
PopulateSchema(connection);

var dbRec = await LoadPopulation(connection, pop);
var popByCity = dbRec.GroupBy(x => x.City.ToLower()).ToDictionary(x => x.Key, x => x.First());

await LoadLocations(connection, tims, popByCity);

static async Task LoadLocations(IDbConnection connection, List<Feature> records, Dictionary<string, PopulationRow> populations)
{
    Console.WriteLine("Loading Locations");
    await connection.ExecuteAsync("DELETE FROM location");
    var missing = new List<TimsLocation>();
    foreach(var (record, idx) in records.Select((x,i) => (x.Properties, i)))
    {
        if(!populations.TryGetValue(record.City.ToLower(), out var popRow))
        {
            missing.Add(record);
        } 
        await connection.ExecuteAsync(
            "INSERT INTO location (population_id, city, province, address) VALUES (@PopulationId, @City, @Province, @Address)", 
            new { PopulationId = popRow?.Id, record.City, record.Province, record.Address });
        if(idx % 100 == 0)
        {
            Console.Write("+");
        }
        else if(idx % 10 == 0)
        {
            Console.Write(".");
        } 
    }

    Console.WriteLine("%");
    
}

static async Task<List<PopulationRow>> LoadPopulation(IDbConnection connection, List<PopulationRecord> records)
{
    Console.WriteLine("Loading Population");
    await connection.ExecuteAsync("DELETE FROM population");
    foreach(var (record, idx) in records.Select((x,i) => (x, i)))
    {
        await connection.ExecuteAsync("INSERT INTO population (city, province, population) VALUES (@City, @Province, @Population)", record);
        if(idx % 100 == 0)
        {
            Console.Write("+");
        }
        else if(idx % 10 == 0)
        {
            Console.Write(".");
        } 
    }
    Console.WriteLine("%");

    return (await connection.QueryAsync<PopulationRow>("SELECT id, city, province, population from population")).ToList();
}


static void PopulateSchema(IDbConnection connection)
{
    using var popTableCmd = connection.CreateCommand();
    popTableCmd.CommandText = """
    CREATE TABLE IF NOT EXISTS population (
    id integer primary key,
    city text not null,
    province text null,
    population int not null
) STRICT;
""";

    popTableCmd.ExecuteNonQuery();

    using var timTableCmd = connection.CreateCommand();
    timTableCmd.CommandText = """
    CREATE TABLE IF NOT EXISTS location (
    id integer primary key,
    population_id integer null,
    city text not null,
    province text not null,
    address text not null
) STRICT;
""";
    timTableCmd.ExecuteNonQuery();
}