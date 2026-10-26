public record TimsLocation(string Province, string City, string Address);

public record Feature(TimsLocation Properties);
public record Collection(List<Feature> Features);