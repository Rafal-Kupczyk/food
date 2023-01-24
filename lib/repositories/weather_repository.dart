import 'package:food/data/remote_data_sources/weather_remote_data_sources.dart';
import 'package:food/models/weather_model.dart';

class WeatherRepository {
  WeatherRepository(this._weatherRemoteDataSources);

  final WeatherRemoteDataSources _weatherRemoteDataSources;

  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    final json = await _weatherRemoteDataSources.getWeatherData(
      city: city,
    );
    if (json == null) {
      return null;
    }

    return WeatherModel.fromJson(json);
  }
}
