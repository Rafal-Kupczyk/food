// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food/app/homepage/home_page.dart';
import 'package:food/myaccount/my_account.dart';
import 'package:food/random/random_page.dart';

class BarPage extends StatefulWidget {
  const BarPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  State<BarPage> createState() => _BarPageState();
}

class _BarPageState extends State<BarPage> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        if (currentIndex == 0) {
          return HomePage();
        }
        if (currentIndex == 1) {
          return RandomPage();
        }
        if (currentIndex == 2) {}
        return MyAccountPage(widget: widget);
      }),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ekran glowny',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.refresh),
            label: 'Co dzis na obiad?',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Moje Konto',
          ),
        ],
      ),
    );
  }
}
