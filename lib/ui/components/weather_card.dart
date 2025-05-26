import 'package:climapp/app/consts/images_url.dart';
import 'package:climapp/app/models/weather_model.dart';
import 'package:climapp/utils/colors.dart';
import 'package:climapp/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key, required this.onTap, required this.weather});

  final Function onTap;
  final WeatherModel weather;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        onTap: () {
          onTap();
        },
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
              SvgPicture.network(
                '$weatherConditionUrl${weather.conditionSlug}.svg',
                width: 32,
              ),
              Text(weather.city),
              Text(
                '${weather.temp}°',
                style: extraLargeBold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VerticalWeatherCard extends StatelessWidget {
  const VerticalWeatherCard({
    super.key,
    required this.weekDay,
    required this.temperature,
    required this.date,
    required this.moonPhase,
  });

  final String weekDay;
  final String date;
  final String temperature;
  final String moonPhase;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(right: 8),
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
            const SizedBox(
              height: 4,
            ),
            Text(date),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Image.network('$moonPhaseUrl$moonPhase.png')),
            Text(
              temperature,
              style: largeSemibold,
            ),
          ],
        ),
      ),
    );
  }
}

class DetailedWeatherCard extends StatelessWidget {
  const DetailedWeatherCard({super.key, required this.weather});

  final WeatherModel weather;

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
          Text(
            "Hoje (${weather.date})",
            style: mediumSemibold,
          ),
          const SizedBox(
            height: 24,
          ),
          SvgPicture.network(
            '$weatherConditionUrl${weather.conditionSlug}.svg',
            width: 64,
          ),
          Text(
            "${weather.temp}°",
            style: extraLargeBold.copyWith(fontSize: 42),
          ),
          Text(weather.description),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 24,
                height: 24,
                margin: const EdgeInsets.only(right: 8),
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(
                      image: AssetImage("assets/img/water_drop.png"),
                      alignment: Alignment.center),
                ),
              ),
              const Text(
                "Umidade:",
                style: mediumSemibold,
              ),
              Expanded(
                child: Text(
                  "${weather.humidity}%",
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 24,
                height: 24,
                margin: const EdgeInsets.only(right: 8),
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(
                      image: AssetImage("assets/img/device_thermostat.png"),
                      alignment: Alignment.center),
                ),
              ),
              const Text(
                "Min/Max:",
                style: mediumSemibold,
              ),
              Expanded(
                child: Text(
                    "${weather.forecast[0].min}/${weather.forecast[0].max}°",
                    textAlign: TextAlign.right),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
