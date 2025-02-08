package dev.javarush.roadmapsh_backend.weather_api;

public record TemperatureInfo(
    double max,
    double min,
    double average,
    double feelsMax,
    double feelsMin,
    double feelsLike
) {

}
