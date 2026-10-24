// See https://aka.ms/new-console-template for more information
using System.Text.Json;
using System.Text.Json.Serialization;

Console.WriteLine("Hello, World!");
var opts = new JsonSerializerOptions(JsonSerializerOptions.Default) { PropertyNameCaseInsensitive = true };


var timsStr = await File.ReadAllTextAsync("./geocoded-all_tims_across_canada-2024-10-13.geojson");
var popStr = await File.ReadAllTextAsync("./canada-cities-by-population-2026.json");

var tims = JsonSerializer.Deserialize<Collection>(timsStr, opts)!.Features;
var pop = JsonSerializer.Deserialize<List<PopulationRecord>>(popStr, opts)!;

var timsByCity = tims.GroupBy(x => x.Properties.City).ToDictionary(x => x.Key, x => x.Count());
var popByCity = pop.GroupBy(x => x.City.ToLower()).ToDictionary(x => x.Key, x => x.First().Pop2026);
var percapita = new List<(string, int, int, double)>();

foreach(var (city, count) in timsByCity)
{
    if(popByCity.TryGetValue(city.ToLower(), out var cityPop))
    {
        var pc = count / (double)cityPop;
        percapita.Add((city, count, cityPop, pc));
    } else
    {
        Console.WriteLine($"Could not find a population value for {city}");
    }
}

foreach(var item in percapita.OrderBy(x => x.Item4))
{
    Console.WriteLine(item);
}