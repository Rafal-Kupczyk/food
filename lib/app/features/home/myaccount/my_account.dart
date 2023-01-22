import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/App/cubit/root_cubit.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({
    Key? key,
    required this.email,
  }) : super(key: key);

  final String? email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Jestes zalogowany jako: $email ')),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: 150,
            child: ElevatedButton.icon(
              icon: const Icon(
                Icons.follow_the_signs,
              ),
              onPressed: () {
                context.read<RootCubit>().signOut();
              },
              label: const Text('Wyloguj sie'),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
