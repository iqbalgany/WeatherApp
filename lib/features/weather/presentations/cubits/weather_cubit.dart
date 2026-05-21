import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  Future<void> fetchWeather() async {
    emit(WeatherLoading());
    try {
      WeatherFactory wf = WeatherFactory('API_KEY', language: Language.ENGLISH);
      Geolocator;
      // Weather weather = await wf.currentWeatherByLocation(latitude, longitude)
      // emit(WeatherSuccess());
    } catch (e) {
      emit(WeatherError(e.toString()));
    }
  }
}
