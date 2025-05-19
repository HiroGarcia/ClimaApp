class WeatherModel {
  final int temp;
  final String date;
  final String time;
  final String conditionCode;
  final String description;
  final String currently;
  final String cid;
  final String city;
  final String imgId;
  final int humidity;
  final double cloudiness;
  final num rain;
  final String windSpeedy;
  final int windDirection;
  final String windCardinal;
  final String sunrise;
  final String sunset;
  final String moonPhase;
  final String conditionSlug;
  final String cityName;
  final String timezone;
  final List<WeatherForecast> forecast;
  final String cref;

  WeatherModel({
    required this.temp,
    required this.date,
    required this.time,
    required this.conditionCode,
    required this.description,
    required this.currently,
    required this.cid,
    required this.city,
    required this.imgId,
    required this.humidity,
    required this.cloudiness,
    required this.rain,
    required this.windSpeedy,
    required this.windDirection,
    required this.windCardinal,
    required this.sunrise,
    required this.sunset,
    required this.moonPhase,
    required this.conditionSlug,
    required this.cityName,
    required this.timezone,
    required this.forecast,
    required this.cref,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      temp: json['temp'] as int,
      date: json['date'] as String,
      time: json['time'] as String,
      conditionCode: json['condition_code'] as String,
      description: json['description'] as String,
      currently: json['currently'] as String,
      cid: json['cid'] as String,
      city: json['city'] as String,
      imgId: json['img_id'] as String,
      humidity: json['humidity'] as int,
      cloudiness: json['cloudiness'] as double,
      rain: json['rain'] as num,
      windSpeedy: json['wind_speedy'] as String,
      windDirection: json['wind_direction'] as int,
      windCardinal: json['wind_cardinal'] as String,
      sunrise: json['sunrise'] as String,
      sunset: json['sunset'] as String,
      moonPhase: json['moon_phase'] as String,
      conditionSlug: json['condition_slug'] as String,
      cityName: json['city_name'] as String,
      timezone: json['timezone'] as String,
      forecast: (json['forecast'] as List)
          .map((e) => WeatherForecast.fromJson(e))
          .toList(),
      cref: json['cref'] as String,
    );
  }
}

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
