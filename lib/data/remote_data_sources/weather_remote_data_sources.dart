import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
@injectable  
class WeatherRemoteDataSources {



  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    try {
      final response = await Dio().get<Map<String, dynamic>>(
          'http://api.weatherapi.com/v1/current.json?key=b6723285092645059da101802222412&q=$city&aqi=no');
      return response.data;
    } on DioError catch (error) {
      throw Exception(
          error.response?.data['error']['message'] ?? 'Nieznany błąd');
    }
  }

}
