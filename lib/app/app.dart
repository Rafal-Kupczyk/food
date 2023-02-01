import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/app/cubit/root_cubit.dart';

import 'package:food/app/features/home/Login/login_page.dart';

import 'package:food/app/features/home/bottomnavigationbar_page.dart';
import 'package:food/app/welcome_page.dart';
import 'package:food/config.dart';
import 'package:food/repositories/login_repository.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: Config.debugShowCheckedModeBanner,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomePage(),
    );
  }
}

class RootPage extends StatelessWidget {
  const RootPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RootCubit(LoginRepository())..start(),
      child: BlocBuilder<RootCubit, RootState>(
        builder: (context, state) {
          final user = state.user;
          if (user == null) {
            return LoginPage();
          }
          return BarPage(user: user);
        },
      ),
    );
  }
}
