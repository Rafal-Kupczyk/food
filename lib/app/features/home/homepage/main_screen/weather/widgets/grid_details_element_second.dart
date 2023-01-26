import 'package:flutter/material.dart';

import 'package:food/models/weather_model.dart';


class GridDetailsElementSecond extends StatelessWidget {
  const GridDetailsElementSecond({
    Key? key,
    required this.weatherModel,
  }) : super(key: key);

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.av_timer_outlined,
          color: Colors.cyan,
          size: 30,
        ),
        const SizedBox(height: 15),
        const Text(
          'Ciśnienie',
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Text(
              weatherModel.pressuremb.toString(),
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            const SizedBox(width: 5),
            const Text(
              'hPa',
              style: TextStyle(fontSize: 20),
            )
          ],
        )
      ],
    );
  }
}
