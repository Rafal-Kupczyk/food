// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:food/app/features/home/bottomnavigationbar_page.dart';

import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final BarPage widget;

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    Color shadowColor = Colors.greenAccent.shade700;
    Color backgroundColor = shadowColor.withOpacity(0.7);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child:
                  Text('Jestes zalogowany jako: ${widget.widget.user.email} ')),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: 150,
            child: ElevatedButton.icon(
              icon: Icon(
                Icons.follow_the_signs,
              ),
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              label: Text('Wyloguj sie'),
            ),
          ),
          SizedBox(height: 30),
          Listener(
            onPointerDown: (_) => setState(() {
              isPressed = true;
            }),
            onPointerUp: (_) => setState(() {
              isPressed = false;
            }),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: isPressed ? backgroundColor : null,
                boxShadow: [
                  for (double i = 3; i < 8; i++)
                    BoxShadow(
                        spreadRadius: 1,
                        blurStyle: BlurStyle.normal,
                        color: Color.fromARGB(255, 255, 0, 0)),
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    for (double i = 1; i < 5; i++)
                      BoxShadow(
                        spreadRadius: -1,
                        color: shadowColor,
                        blurRadius: 4 * i,
                        blurStyle: BlurStyle.outer,
                      ),
                  ],
                ),
                child: ElevatedButton.icon(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  onHover: (hovered) => setState(() {
                    isPressed = hovered;
                  }),
                  onPressed: () {},
                  label: Text(
                    'Ulubione reustaracje',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      shadows: [
                        for (double i = 10; i < (isPressed ? 8 : 4); i++)
                          Shadow(
                            color: shadowColor,
                            blurRadius: 1 * i,
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
