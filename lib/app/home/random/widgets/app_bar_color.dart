import 'package:flutter/material.dart';

class AppBarColorPage extends StatelessWidget {
  const AppBarColorPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            Color.fromARGB(255, 6, 246, 242),
            Color.fromARGB(255, 243, 224, 14),
          ],
        ),
      ),
    );
  }
}
