import 'package:intl/intl.dart';

class WeatherModel {
  const WeatherModel({
    required this.temperature,
    required this.city,
    required this.wind,
    required this.feelslikec,
    required this.pressuremb,
    required this.date,
  });

  final double temperature;

  final String city;

  final double wind;
  final double feelslikec;
  final double pressuremb;
  final String date;

  String formatDateTime(String date) {
    return DateFormat('d MMM yyyy hh:mm a').format(DateTime.parse(date));
  }

  WeatherModel.fromJson(Map<String, dynamic> json)
      : city = json['location']['name'],
        date = json['location']['localtime'],
        temperature = json['current']['temp_c'] + 0.0,
        wind = json['current']['wind_kph'] + 0.0,
        pressuremb = json['current']['pressure_mb'] + 0.0,
        feelslikec = json['current']['feelslike_c'] + 0.0;
}
