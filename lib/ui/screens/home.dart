import 'package:climapp/app/injection/injection_container.dart';
import 'package:climapp/app/service/weather_service.dart';
import 'package:climapp/app/store/weather_store.dart';
import 'package:climapp/ui/components/custom_field.dart';
import 'package:climapp/ui/components/weather_card.dart';
import 'package:climapp/ui/screens/details.dart';
import 'package:climapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final TextEditingController cityTextController = TextEditingController();
  final WeatherStore weatherStore = GetIt.instance.get<WeatherStore>();

  @override
  Widget build(BuildContext context) {
    final WeatherService weatherService = getIt<WeatherService>();
    return Scaffold(
      body: Ink(
        height: double.infinity,
        padding: const EdgeInsets.fromLTRB(32, 80, 32, 0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: gradiente,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CustomSearchField(
                  controller: cityTextController,
                  onEditingComplete: () async {
                    weatherStore.fetchWeatherByCity(cityTextController.text);
                    FocusScope.of(context).unfocus();
                  }),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 32),
            ),
            Observer(
                builder: (context) => SliverList.builder(
                    itemBuilder: (context, index) {
                      return WeatherCard(
                        weather: weatherStore.weatherList[index],
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WeatherDetails(
                                  weather: weatherStore.weatherList[index]),
                            ),
                          );
                        },
                      );
                    },
                    itemCount: weatherStore.weatherList.length)),
          ],
        ),
      ),
    );
  }
}
