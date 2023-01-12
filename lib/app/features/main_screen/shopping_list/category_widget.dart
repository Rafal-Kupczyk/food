
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(
    this.title, {
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 6, 246, 242),
            Color.fromARGB(255, 243, 224, 14),
          ],
        ),
      ),
      padding: const EdgeInsets.all(30.0),
      margin: const EdgeInsets.all(10.0),
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
