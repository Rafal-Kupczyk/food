// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class DrawPageTextWidget extends StatelessWidget {
  final String secondtext;

  const DrawPageTextWidget({Key? key, required this.secondtext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      secondtext,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    );
  }
}
