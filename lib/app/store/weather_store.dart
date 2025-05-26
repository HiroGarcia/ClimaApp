import 'package:climapp/app/models/weather_model.dart';
import 'package:climapp/app/service/weather_service.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

part 'weather_store.g.dart';

class WeatherStore = _WeatherStore with _$WeatherStore;

abstract class _WeatherStore with Store {
  final GetIt getIt = GetIt.instance;
  @observable
  ObservableList<WeatherModel> weatherList = ObservableList();

  @action
  Future<void> fetchWeatherByCity(String city) async {
    final WeatherService service = getIt.get<WeatherService>();
    weatherList.add(await service.getWeatherByCity(city));
  }
}
