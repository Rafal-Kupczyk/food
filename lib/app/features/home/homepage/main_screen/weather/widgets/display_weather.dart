import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/App/features/home/homepage/main_screen/weather/cubit/weather_cubit.dart';

import 'package:food/App/features/home/homepage/main_screen/weather/widgets/main_container.dart';
import 'package:food/App/features/home/homepage/main_screen/weather/widgets/weather_details.dart';
import 'package:food/models/weather_model.dart';

class DisplayWeatherWidget extends StatelessWidget {
  const DisplayWeatherWidget({
    Key? key,
    required this.weatherModel,
  }) : super(key: key);

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        return Column(
          children: [
            MainContainer(weatherModel: weatherModel),
            WeatherDetails(weatherModel: weatherModel)
          ],
        );
      },
    );
  }
}
