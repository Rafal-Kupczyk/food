import 'package:dio/dio.dart';


class WeatherRemoteDataSources {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=b6723285092645059da101802222412&q=$city&aqi=no');
    return response.data;
  }
}
