

import 'package:flutter/material.dart';

class DrawPageTextWidget extends StatelessWidget {
  final String secondtext;

  const DrawPageTextWidget({Key? key, required this.secondtext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      secondtext,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    );
  }
}
