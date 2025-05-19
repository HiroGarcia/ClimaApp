import 'package:climapp/utils/colors.dart';
import 'package:climapp/utils/theme.dart';
import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key, required this.cityName, required this.temperature, required this.onTap});

  final String cityName;
  final String temperature;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        onTap: () { onTap(); },
        child: Ink(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: fillTransparente,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Icon(Icons.sunny),
              Text(cityName),
              Text(temperature, style: extraLargeBold,),
            ],
          ),
        ),
      ),
    );
  }
}


class VerticalWeatherCard extends StatelessWidget {
  const VerticalWeatherCard({super.key, required this.weekDay, required this.temperature, required this.date});

  final String weekDay;
  final String date;
  final String temperature;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: fillTransparente,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(weekDay),
            const SizedBox(height: 4,),
            Text(date),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Icon(Icons.sunny),
            ),
            Text(temperature, style: largeSemibold,),
          ],
        ),
      ),
    );
  }
}

class DetailedWeatherCard extends StatelessWidget {
  const DetailedWeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: violetaHover,
      ),
      child: Column(
        children: <Widget>[
          const Text("Hoje (03/12)", style: mediumSemibold,),
          const SizedBox(height: 24,),
          const Icon(Icons.sunny, size: 64,),
          Text("32°", style: extraLargeBold.copyWith(fontSize: 42),),
          const Text("Sol entre nuvens"),
          const SizedBox(height: 24,),
          Row(
            children: <Widget>[
              Container(
                width: 24,
                height: 24,
                margin: const EdgeInsets.only(right: 8),
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(image: AssetImage("assets/img/water_drop.png"), alignment: Alignment.center),
                ),
              ),
              const Text("Umidade:", style: mediumSemibold,),
              const Expanded(
                child: Text(
                  "80%",
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8,),
          Row(
            children: <Widget>[
              Container(
                width: 24,
                height: 24,
                margin: const EdgeInsets.only(right: 8),
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(image: AssetImage("assets/img/device_thermostat.png"), alignment: Alignment.center),
                ),
              ),
              const Text("Min/Max:", style: mediumSemibold,),
              const Expanded(
                child: Text("20/34°", textAlign: TextAlign.right),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
