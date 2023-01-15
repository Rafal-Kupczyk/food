// ignore_for_file: unused_local_variable

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food/App/features/home/random/widgets/app_bar_color.dart';
import 'package:food/App/features/home/random/widgets/button_bigos.dart';
import 'package:food/App/features/home/random/widgets/button_bogracz.dart';
import 'package:food/App/features/home/random/widgets/button_hamburger.dart';
import 'package:food/App/features/home/random/widgets/button_hotdog.dart';
import 'package:food/App/features/home/random/widgets/button_kapusniak.dart';
import 'package:food/App/features/home/random/widgets/button_kotlet.dart';
import 'package:food/App/features/home/random/widgets/button_nalesniki.dart';
import 'package:food/App/features/home/random/widgets/button_nuggets.dart';
import 'package:food/App/features/home/random/widgets/button_pierogi.dart';
import 'package:food/App/features/home/random/widgets/button_pizza.dart';
import 'package:food/App/features/home/random/widgets/button_rolada.dart';
import 'package:food/App/features/home/random/widgets/button_ryba.dart';
import 'package:food/App/features/home/random/widgets/button_schabowy.dart';
import 'package:food/App/features/home/random/widgets/button_spagetti.dart';
import 'package:food/App/features/home/random/widgets/button_tortilla.dart';
import 'package:food/App/features/home/random/widgets/button_zapiekanka.dart';

class DrawPage extends StatelessWidget {
  const DrawPage({super.key});

  @override
  Widget build(BuildContext context) {
    /* final list = nextNumbers(10, min: 5, max: 16);
      List<int> nextNumbers(int length, {required int min, required int max}) =>
      min + Random().nextInt(max - min + 1);
  final numbers = Set<int>();*/

    final random = Random();
    final result = random.nextInt(16) + 1;

    String tortilla = 'Tortilla :)';
    String ryba = 'Ryba :)';
    String burger = 'Hamburger :)';
    String pizza = 'Pizza :)';
    String mieso = 'Mieso w ciescie francuskim :)';
    String schabowy = 'Schabowy :)';
    String spagetti = 'Spagetti :)';
    String kotlet = 'Kotlet z piersi :)';
    String hotdog = 'Hot-Dog :)';
    String zapiekanka = 'Zapiekanka :)';
    String nuggets = 'Nuggetsy :)';
    String rolada = 'Rolada z kluskami :)';
    String kapusniak = 'Kapuśniak :)';
    String bigos = 'Bigos :)';
    String bogracz = 'Bogracz :)';
    String nalesniki = 'Naleśniki :)';
    String pierogi = 'Pierogi ruskie :)';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smacznego :)'),
        centerTitle: true,
        flexibleSpace: const AppBarColorPage(),
      ),
      body: ListView(children: [
        const SizedBox(height: 100),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (result == 1) const TextButtonTortilla(),
            if (result == 1) const SizedBox(height: 30),
            if (result == 1) Image.asset("images/tortilla.jpg"),
            if (result == 2) const TextButtonRyba(),
            if (result == 2) const SizedBox(height: 30),
            if (result == 2) Image.asset("images/ryba.jpg"),
            if (result == 3) const TextButtonPizza(),
            if (result == 3) const SizedBox(height: 30),
            if (result == 3) Image.asset("images/pizza.jpg"),
            if (result == 4) const TextButtonHamburger(),
            if (result == 4) const SizedBox(height: 30),
            if (result == 4) Image.asset("images/hamburger.jpg"),
            if (result == 5) const TextButtonNuggets(),
            if (result == 5) const SizedBox(height: 30),
            if (result == 5) Image.asset("images/nuggetsy.jpeg"),
            if (result == 6) const TextButtonBigos(),
            if (result == 6) const SizedBox(height: 30),
            if (result == 6) Image.asset("images/bigos.jpg"),
            if (result == 7) const TextButtonBogracz(),
            if (result == 7) const SizedBox(height: 30),
            if (result == 7) Image.asset("images/bogracz.jpg"),
            if (result == 8) const TextButtonKotlet(),
            if (result == 8) const SizedBox(height: 30),
            if (result == 8) Image.asset("images/kotletzpiersi.jpg"),
            if (result == 9) const TextButtonHotDog(),
            if (result == 9) const SizedBox(height: 30),
            if (result == 9) Image.asset("images/hotdog.jpg"),
            if (result == 10) const TextButtonCabbage(),
            if (result == 10) const SizedBox(height: 30),
            if (result == 10) Image.asset("images/kapusniak.jpg"),
            if (result == 11) const TextButtonPanCakes(),
            if (result == 11) const SizedBox(height: 30),
            if (result == 11) Image.asset("images/nalesniki.jpg"),
            if (result == 12) const TextButtonPierogi(),
            if (result == 12) const SizedBox(height: 30),
            if (result == 12) Image.asset("images/pierogi.jpg"),
            if (result == 13) const TextButtonRolada(),
            if (result == 13) const SizedBox(height: 30),
            if (result == 13) Image.asset("images/rolada.jpeg"),
            if (result == 14) const TextButtonSchabowy(),
            if (result == 14) const SizedBox(height: 30),
            if (result == 14) Image.asset("images/schabowy.jpg"),
            if (result == 15) const TextButtonSpagetti(),
            if (result == 15) const SizedBox(height: 30),
            if (result == 15) Image.asset("images/spagetti.jpg"),
            if (result == 16) const TextButtonCasserole(),
            if (result == 16) const SizedBox(height: 30),
            if (result == 16) Image.asset("images/zapiekanka.jpg"),
            const SizedBox(height: 20),
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.arrow_back),
                label: const Text('Wróc'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            )
          ],
        ),
      ]),
    );
  }
}

/* final list = nextNumbers(10, min: 5, max: 16);
      List<int> nextNumbers(int length, {required int min, required int max}) =>
      min + Random().nextInt(max - min + 1);
  final numbers = Set<int>();

  while (numbers.length < length) {
    final number = nextNumbers(min: min, max: max);
    numbers.add(number);
  }
  return List.of(numbers);
  }*/
