// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget(
    this.title, {
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Color.fromARGB(255, 6, 246, 242),
            Color.fromARGB(255, 243, 224, 14),
          ],
        ),
      ),
      padding: EdgeInsets.all(30.0),
      margin: EdgeInsets.all(10.0),
      child: Row(
        children: [
          Text(
            title,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
