// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food/App/features/home/random/widgets/app_bar_color.dart';
import 'package:food/App/features/home/random/widgets/draw_text_widget.dart';

class DrawPage extends StatelessWidget {
  const DrawPage({super.key});

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final result = random.nextInt(8) + 1;
    String tortilla = 'Tortilla :)';
    String ryba = 'Ryba z frytkami :)';
    String burger = 'Hamburger :)';
    String pizza = 'Pizza :)';
    String mieso = 'Mieso w ciescie francuskim :)';
    String schabowy = 'Schabowy :)';
    String spagetti = 'Spagetti :)';
    String kotlet = 'Kotlet z piersi :)';

    return Scaffold(
      appBar: AppBar(
        title: Text('Smacznego :)'),
        centerTitle: true,
        flexibleSpace: AppBarColorPage(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (result == 1)
              DrawPageTextWidget(secondtext: tortilla.toString()),
            if (result == 1) SizedBox(height: 30),
            if (result == 1) Image.asset("images/tortilla.jpg"),
            if (result == 2) DrawPageTextWidget(secondtext: ryba.toString()),
            if (result == 2) SizedBox(height: 30),
            if (result == 2) Image.asset("images/ryba.jpg"),
            if (result == 3) DrawPageTextWidget(secondtext: pizza.toString()),
            if (result == 3) SizedBox(height: 30),
            if (result == 3) Image.asset("images/pizza.jpg"),
            if (result == 4) DrawPageTextWidget(secondtext: burger.toString()),
            if (result == 4) SizedBox(height: 30),
            if (result == 4) Image.asset("images/burge.jpg"),
            if (result == 5) DrawPageTextWidget(secondtext: mieso.toString()),
            if (result == 5) SizedBox(height: 30),
            if (result == 5) Image.asset("images/ciastofrancuskie.jpg"),
            if (result == 6)
              DrawPageTextWidget(secondtext: spagetti.toString()),
            if (result == 6) SizedBox(height: 30),
            if (result == 6) Image.asset("images/spagetti.jpg"),
            if (result == 7)
              DrawPageTextWidget(secondtext: schabowy.toString()),
            if (result == 7) SizedBox(height: 30),
            if (result == 7) Image.asset("images/schabowy.jpg", width: 300),
            if (result == 8) DrawPageTextWidget(secondtext: kotlet.toString()),
            if (result == 8) SizedBox(height: 30),
            if (result == 8) Image.asset("images/kotletzpiersi.jpg"),
            SizedBox(height: 20),
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton.icon(
                icon: Icon(Icons.arrow_back),
                label: Text('Wróc'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
