// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HamburgerIngredients extends StatelessWidget {
  const HamburgerIngredients({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Center(
                child: Icon(
                  Icons.brightness_1_rounded,
                  size: 20,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                '4 kotlety wołowe',
                style: GoogleFonts.prompt(
                  textStyle: const TextStyle(letterSpacing: .1, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Center(
                child: Icon(
                  Icons.brightness_1_rounded,
                  size: 20,
                ),
              ),
              const SizedBox(width: 20),
              Text('2 Bułki do hamburgera',
                  style: GoogleFonts.prompt(
                    textStyle: const TextStyle(letterSpacing: .1, fontSize: 16),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Center(
                child: Icon(
                  Icons.brightness_1_rounded,
                  size: 20,
                ),
              ),
              const SizedBox(width: 20),
              Text('Czerwona cebula',
                  style: GoogleFonts.prompt(
                    textStyle: const TextStyle(letterSpacing: .1, fontSize: 16),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Center(
                child: Icon(
                  Icons.brightness_1_rounded,
                  size: 20,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text('Pomidor',
                  style: GoogleFonts.prompt(
                    textStyle: const TextStyle(letterSpacing: .1, fontSize: 16),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Center(
                child: Icon(
                  Icons.brightness_1_rounded,
                  size: 20,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text('Ser cheddar',
                  style: GoogleFonts.prompt(
                    textStyle: const TextStyle(letterSpacing: .1, fontSize: 16),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Center(
                child: Icon(
                  Icons.brightness_1_rounded,
                  size: 20,
                ),
              ),
              const SizedBox(width: 20),
              Text('Przyprawa do mięsa mielonego',
                  style: GoogleFonts.prompt(
                    textStyle: const TextStyle(letterSpacing: .1, fontSize: 16),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Center(
                child: Icon(
                  Icons.brightness_1_rounded,
                  size: 20,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text('Sos czosnkowy/ostry',
                  style: GoogleFonts.prompt(
                    textStyle: const TextStyle(letterSpacing: .1, fontSize: 16),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Center(
                child: Icon(
                  Icons.brightness_1_rounded,
                  size: 20,
                ),
              ),
              const SizedBox(width: 20),
              Text('Olej do smażenia',
                  style: GoogleFonts.prompt(
                    textStyle: const TextStyle(letterSpacing: .1, fontSize: 16),
                  )),
            ],
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
