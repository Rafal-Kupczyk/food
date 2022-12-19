// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        if (currentIndex == 0) {
          return Scaffold(
            body: Center(child: Text('1')),
          );
        }
        if (currentIndex == 1) {
          return Scaffold(
            body: Center(child: Text('2')),
          );
        }
        if (currentIndex == 2) {}
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text('Jestes zalogowany jako: ${widget.user.email} ')),
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
            label: 'Moje Konto',
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
