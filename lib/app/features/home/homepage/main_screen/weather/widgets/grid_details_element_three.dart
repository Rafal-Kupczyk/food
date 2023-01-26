import 'package:flutter/material.dart';
import 'package:food/models/weather_model.dart';

class GridDetailsElementThree extends StatelessWidget {
  const GridDetailsElementThree({
    Key? key,
    required this.weatherModel,
  }) : super(key: key);

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.thermostat,
          color: Colors.cyan,
          size: 30,
        ),
        const SizedBox(height: 15),
        const Text(
          'Odczuwalna',
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Text(
              weatherModel.feelslikec.toString(),
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            const Text(
              '°',
              style: TextStyle(fontSize: 20),
            )
          ],
        )
      ],
    );
  }
}