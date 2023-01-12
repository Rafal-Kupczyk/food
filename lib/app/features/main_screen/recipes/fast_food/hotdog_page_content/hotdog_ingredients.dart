// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HotDogIngredients extends StatelessWidget {
  const HotDogIngredients({super.key});

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
              Expanded(
                child: Text(
                  '3 ulubione parówki lub podłużne kiełbaski.',
                  style: GoogleFonts.prompt(
                    textStyle: const TextStyle(letterSpacing: .1, fontSize: 16),
                  ),
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
              Expanded(
                child: Text(
                  '3 bułki do hot dogów.',
                  style: GoogleFonts.prompt(
                    textStyle: const TextStyle(letterSpacing: .1, fontSize: 16),
                  ),
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
              Expanded(
                child: Text(
                  'Ogórek kiszony, konserwowy lub świeży.',
                  style: GoogleFonts.prompt(
                    textStyle: const TextStyle(letterSpacing: .1, fontSize: 16),
                  ),
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
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text('Sałata rzymska, lodowa lub rukola.',
                    style: GoogleFonts.prompt(
                      textStyle:
                          const TextStyle(letterSpacing: .1, fontSize: 16),
                    )),
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
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text('Kawałek czerwonej lub białej cebuli.',
                    style: GoogleFonts.prompt(
                      textStyle:
                          const TextStyle(letterSpacing: .1, fontSize: 16),
                    )),
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
              Expanded(
                child: Text('Średniej wielkości pomidor',
                    style: GoogleFonts.prompt(
                      textStyle:
                          const TextStyle(letterSpacing: .1, fontSize: 16),
                    )),
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
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                    'Inne dodatki: prażona cebula, ketchup, musztarda, majonez.',
                    style: GoogleFonts.prompt(
                      textStyle:
                          const TextStyle(letterSpacing: .1, fontSize: 16),
                    )),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
