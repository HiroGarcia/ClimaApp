import 'package:climapp/app/store/weather_store.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:climapp/app/adapters/http_adapter.dart';
import 'package:climapp/app/service/weather_service.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<IHttpAdapter>(() => HttpClient(http.Client()));
  getIt.registerLazySingleton<WeatherService>(
      () => WeatherService(getIt.get<IHttpAdapter>()));
  getIt.registerLazySingleton<WeatherStore>(() => WeatherStore());
}
