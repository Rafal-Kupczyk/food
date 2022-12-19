// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food/app/homepage/home_page.dart';
import 'package:food/app/home/myaccount/my_account.dart';
import 'package:food/app/home/random/random_page.dart';

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
        backgroundColor: Color.fromARGB(255, 6, 255, 14),
        selectedItemColor: Colors.red,

        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;

            Colors.red;
          });
        },
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: currentIndex == 0 ? 30 : 20,
            ),
            label: 'Ekran glowny',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.refresh,
              size: currentIndex == 1 ? 30 : 20,
            ),
            label: 'Co dzis na obiad?',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: currentIndex == 2 ? 30 : 20,
            ),
            label: 'Moje Konto',
          ),
        ],
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
