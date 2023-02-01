import 'package:bloc/bloc.dart';
import 'package:food/App/core/enums.dart';
import 'package:food/models/weather_model.dart';
import 'package:food/repositories/weather_repository.dart';
import 'package:injectable/injectable.dart';

part 'weather_state.dart';

@injectable
class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this._weatherRepository) : super(const WeatherState());

  final WeatherRepository _weatherRepository;

  Future<void> getWeatherModel({
    required String city,
  }) async {
    emit(const WeatherState(status: Status.loading));
    try {
      final weatherModel = await _weatherRepository.getWeatherModel(city: city);
      emit(
        WeatherState(
          model: weatherModel,
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        WeatherState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
