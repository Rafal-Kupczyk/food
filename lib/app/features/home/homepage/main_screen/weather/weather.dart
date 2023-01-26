// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/App/core/enums.dart';
import 'package:food/App/features/home/homepage/main_screen/weather/cubit/weather_cubit.dart';
import 'package:food/App/features/home/homepage/main_screen/weather/widgets/display_weather.dart';
import 'package:food/App/features/home/homepage/main_screen/weather/widgets/search_widget.dart';
import 'package:food/app/features/home/random/widgets/app_bar_color.dart';
import 'package:food/data/remote_data_sources/weather_remote_data_sources.dart';

import 'package:food/repositories/weather_repository.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({
    Key? key,
  }) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(
        WeatherRepository(WeatherRemoteDataSources()),
      ),
      child: BlocConsumer<WeatherCubit, WeatherState>(
        listener: (context, state) {
          if (state.status == Status.error) {
            final errorMessage = state.errorMessage ?? 'Unkown error';
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(errorMessage),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          final weatherModel = state.model;
          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color.fromARGB(255, 234, 237, 240),
                  Color.fromARGB(255, 176, 208, 221),
                ],
                tileMode: TileMode.mirror,
              ),
            ),
            child: Scaffold(
              appBar: AppBar(
                flexibleSpace: const AppBarColorPage(),
              ),
              body: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      Color.fromARGB(255, 234, 237, 240),
                      Color.fromARGB(255, 176, 208, 221),
                    ],
                    tileMode: TileMode.mirror,
                  ),
                ),
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Center(
                          child: Builder(
                            builder: (context) {
                              if (state.status == Status.loading) {
                                return const Text('Loading');
                              }
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (weatherModel != null)
                                    DisplayWeatherWidget(
                                      weatherModel: weatherModel,
                                    ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  SearchWidget(),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
