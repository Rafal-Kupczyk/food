import 'package:flutter/material.dart';
import 'package:food/App/features/home/homepage/main_screen/weather/widgets/grid_details_element_first.dart';
import 'package:food/App/features/home/homepage/main_screen/weather/widgets/grid_details_element_second.dart';
import 'package:food/App/features/home/homepage/main_screen/weather/widgets/grid_details_element_three.dart';

import 'package:food/models/weather_model.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({
    Key? key,
    required this.weatherModel,
  }) : super(key: key);

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(32)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(4, 8),
          )
        ],
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.topRight,
          colors: <Color>[
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 223, 255, 249),
          ],
          tileMode: TileMode.mirror,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GridDetailsElementFirst(weatherModel: weatherModel),
              GridDetailsElementSecond(weatherModel: weatherModel),
              GridDetailsElementThree(weatherModel: weatherModel),
            ],
          ),
        ],
      ),
    );
  }
}

/*decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color.fromARGB(255, 234, 237, 240),
                  Color.fromARGB(255, 176, 208, 221),
                ],
                tileMode: TileMode.mirror,
              ),
            ),*/