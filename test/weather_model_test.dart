import 'package:flutter_test/flutter_test.dart';
import 'package:climapp/app/models/weather_model.dart';
import 'package:climapp/app/models/forecast_model.dart';

void main() {
  group('WeatherModel', () {
    final mockForecast = [
      WeatherForecast(
        date: '26/05',
        fullDate: '26/05/2025',
        weekday: 'Seg',
        max: 27,
        min: 16,
        humidity: 40,
        cloudiness: 42,
        rain: 0,
        rainProbability: 0,
        windSpeedy: '2.92 km/h',
        sunrise: '06:38 am',
        sunset: '05:28 pm',
        moonPhase: 'waning_crescent',
        description: 'Parcialmente nublado',
        condition: 'cloud',
      ),
    ];

    final mockJson = {
      'temp': 15,
      'date': '26/05/2025',
      'time': '08:08',
      'condition_code': '29',
      'description': 'Parcialmente nublado',
      'currently': 'dia',
      'cid': '',
      'city': 'São Paulo, SP',
      'img_id': '29',
      'humidity': 93,
      'cloudiness': 20,
      'rain': 0,
      'wind_speedy': '1.54 km/h',
      'wind_direction': 90,
      'wind_cardinal': 'L',
      'sunrise': '06:38 am',
      'sunset': '05:28 pm',
      'moon_phase': 'waning_crescent',
      'condition_slug': 'cloudly_day',
      'city_name': 'São Paulo',
      'timezone': '-03:00',
      'forecast': [
        {
          'date': '26/05',
          'full_date': '26/05/2025',
          'weekday': 'Seg',
          'max': 27,
          'min': 16,
          'humidity': 40,
          'cloudiness': 42,
          'rain': 0,
          'rain_probability': 0,
          'wind_speedy': '2.92 km/h',
          'sunrise': '06:38 am',
          'sunset': '05:28 pm',
          'moon_phase': 'waning_crescent',
          'description': 'Parcialmente nublado',
          'condition': 'cloud'
        }
      ],
      'cref': 'bc994d',
    };

    test('fromJson should create a valid WeatherModel', () {
      final model = WeatherModel.fromJson(mockJson);

      expect(model.temp, 15);
      expect(model.date, '26/05/2025');
      expect(model.time, '08:08');
      expect(model.conditionCode, '29');
      expect(model.description, 'Parcialmente nublado');
      expect(model.currently, 'dia');
      expect(model.cid, '');
      expect(model.city, 'São Paulo, SP');
      expect(model.imgId, '29');
      expect(model.humidity, 93);
      expect(model.cloudiness, 20);
      expect(model.rain, 0);
      expect(model.windSpeedy, '1.54 km/h');
      expect(model.windDirection, 90);
      expect(model.windCardinal, 'L');
      expect(model.sunrise, '06:38 am');
      expect(model.sunset, '05:28 pm');
      expect(model.moonPhase, 'waning_crescent');
      expect(model.conditionSlug, 'cloudly_day');
      expect(model.cityName, 'São Paulo');
      expect(model.timezone, '-03:00');
      expect(model.forecast.length, 1);
      expect(model.forecast.first.date, '26/05');
      expect(model.forecast.first.fullDate, '26/05/2025');
      expect(model.forecast.first.weekday, 'Seg');
      expect(model.forecast.first.max, 27);
      expect(model.forecast.first.min, 16);
      expect(model.forecast.first.humidity, 40);
      expect(model.forecast.first.cloudiness, 42);
      expect(model.forecast.first.rain, 0);
      expect(model.forecast.first.rainProbability, 0);
      expect(model.forecast.first.windSpeedy, '2.92 km/h');
      expect(model.forecast.first.sunrise, '06:38 am');
      expect(model.forecast.first.sunset, '05:28 pm');
      expect(model.forecast.first.moonPhase, 'waning_crescent');
      expect(model.forecast.first.description, 'Parcialmente nublado');
      expect(model.forecast.first.condition, 'cloud');
      expect(model.cref, 'bc994d');
    });

    test('should create WeatherModel with correct values', () {
      final model = WeatherModel(
        temp: 22,
        date: '27/05/2025',
        time: '15:00',
        conditionCode: '31',
        description: 'Parcialmente nublado',
        currently: 'dia',
        cid: 'BRXX0233',
        city: 'Rio de Janeiro, RJ',
        imgId: '31',
        humidity: 70,
        cloudiness: 20,
        rain: 1,
        windSpeedy: '12 km/h',
        windDirection: 180,
        windCardinal: 'S',
        sunrise: '06:10 am',
        sunset: '06:10 pm',
        moonPhase: 'full',
        conditionSlug: 'partly_cloudy',
        cityName: 'Rio de Janeiro',
        timezone: '-03:00',
        forecast: mockForecast,
        cref: 'def456',
      );

      expect(model.temp, 22);
      expect(model.date, '27/05/2025');
      expect(model.city, 'Rio de Janeiro, RJ');
      expect(model.forecast.first.max, 27);
    });
  });
}
