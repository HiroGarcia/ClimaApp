// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$WeatherStore on _WeatherStore, Store {
  late final _$weatherListAtom =
      Atom(name: '_WeatherStore.weatherList', context: context);

  @override
  ObservableList<WeatherModel> get weatherList {
    _$weatherListAtom.reportRead();
    return super.weatherList;
  }

  @override
  set weatherList(ObservableList<WeatherModel> value) {
    _$weatherListAtom.reportWrite(value, super.weatherList, () {
      super.weatherList = value;
    });
  }

  late final _$fetchWeatherByCityAsyncAction =
      AsyncAction('_WeatherStore.fetchWeatherByCity', context: context);

  @override
  Future<void> fetchWeatherByCity(String city) {
    return _$fetchWeatherByCityAsyncAction
        .run(() => super.fetchWeatherByCity(city));
  }

  @override
  String toString() {
    return '''
weatherList: ${weatherList}
    ''';
  }
}
