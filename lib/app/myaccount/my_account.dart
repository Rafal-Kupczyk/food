// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food/app/home/bottomnavigationbar_page.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final BarPage widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Jestes zalogowany jako: ${widget.user.email} ')),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            child: Text('Wyloguj sie'),
          ),
        ],
      ),
    );
  }
}
