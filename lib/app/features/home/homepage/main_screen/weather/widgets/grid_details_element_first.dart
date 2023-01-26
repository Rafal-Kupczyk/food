import 'package:flutter/material.dart';

import 'package:food/models/weather_model.dart';



class GridDetailsElementFirst extends StatelessWidget {
  const GridDetailsElementFirst({
    Key? key,
    required this.weatherModel,
  }) : super(key: key);

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.wind_power_outlined,
          color: Colors.cyan,
          size: 30,
        ),
        const SizedBox(height: 15),
        const Text(
          'Wiatr',
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Text(
              weatherModel.wind.toString(),
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            const SizedBox(width: 5),
            const Text(
              'km/h',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ],
    );
  }
}
