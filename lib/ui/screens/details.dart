import 'package:climapp/app/models/weather_model.dart';
import 'package:climapp/ui/components/weather_card.dart';
import 'package:climapp/utils/colors.dart';
import 'package:flutter/material.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({super.key, required this.weather});

  final WeatherModel weather;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(weather.city),
      ),
      body: Ink(
        padding: const EdgeInsets.fromLTRB(32, 128, 32, 0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: gradiente,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Column(
          children: <Widget>[
            DetailedWeatherCard(weather: weather),
            const SizedBox(
              height: 40,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  VerticalWeatherCard(
                    weekDay: weather.forecast[1].weekday,
                    temperature: "${weather.forecast[1].max}°",
                    date: weather.forecast[1].date,
                    moonPhase: weather.forecast[1].moonPhase,
                  ),
                  VerticalWeatherCard(
                    weekDay: weather.forecast[2].weekday,
                    temperature: "${weather.forecast[2].max}°",
                    date: weather.forecast[2].date,
                    moonPhase: weather.forecast[2].moonPhase,
                  ),
                  VerticalWeatherCard(
                    weekDay: weather.forecast[3].weekday,
                    temperature: "${weather.forecast[3].max}°",
                    date: weather.forecast[3].date,
                    moonPhase: weather.forecast[3].moonPhase,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
