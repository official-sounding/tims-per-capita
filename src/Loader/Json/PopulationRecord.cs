using System.Text.Json.Serialization;

public record PopulationRecord(string City, string? Province, [property:JsonPropertyName("pop2026")]int Population, double GrowthRate);