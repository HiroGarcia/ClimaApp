class WeatherForecast {
  final String date;
  final String fullDate;
  final String weekday;
  final int max;
  final int min;
  final int humidity;
  final double cloudiness;
  final num rain;
  final int rainProbability;
  final String windSpeedy;
  final String sunrise;
  final String sunset;
  final String moonPhase;
  final String description;
  final String condition;

  WeatherForecast({
    required this.date,
    required this.fullDate,
    required this.weekday,
    required this.max,
    required this.min,
    required this.humidity,
    required this.cloudiness,
    required this.rain,
    required this.rainProbability,
    required this.windSpeedy,
    required this.sunrise,
    required this.sunset,
    required this.moonPhase,
    required this.description,
    required this.condition,
  });

  factory WeatherForecast.fromJson(Map<String, dynamic> json) {
    return WeatherForecast(
      date: json['date'] as String,
      fullDate: json['full_date'] as String,
      weekday: json['weekday'] as String,
      max: json['max'] as int,
      min: json['min'] as int,
      humidity: json['humidity'] as int,
      cloudiness: json['cloudiness'] as double,
      rain: json['rain'] as num,
      rainProbability: json['rain_probability'] as int,
      windSpeedy: json['wind_speedy'] as String,
      sunrise: json['sunrise'] as String,
      sunset: json['sunset'] as String,
      moonPhase: json['moon_phase'] as String,
      description: json['description'] as String,
      condition: json['condition'] as String,
    );
  }
}
