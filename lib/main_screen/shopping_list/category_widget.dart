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
      color: Colors.amber,
      padding: EdgeInsets.all(30.0),
      margin: EdgeInsets.all(10.0),
      child: Text(title),
    );
  }
}
