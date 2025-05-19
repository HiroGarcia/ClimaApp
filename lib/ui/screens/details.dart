import 'package:climapp/ui/components/weather_card.dart';
import 'package:climapp/utils/colors.dart';
import 'package:flutter/material.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({super.key, required this.cityName});

  final String cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(cityName),
      ),
      body: Ink(
        padding: const EdgeInsets.fromLTRB(32, 128, 32, 0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: gradiente,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: const Column(
          children: <Widget>[
            DetailedWeatherCard(),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                VerticalWeatherCard(weekDay: "Segunda", temperature: "25°", date: "03/12"),
                VerticalWeatherCard(weekDay: "Segunda", temperature: "25°", date: "03/12"),
                VerticalWeatherCard(weekDay: "Segunda", temperature: "25°", date: "03/12"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
