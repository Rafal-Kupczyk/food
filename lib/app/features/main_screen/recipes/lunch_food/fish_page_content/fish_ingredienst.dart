// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FishIngredients extends StatelessWidget {
  const FishIngredients({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: ListView(
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Center(
                        child: Icon(
                          Icons.brightness_1_rounded,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '1 płat ryby ',
                        style: GoogleFonts.prompt(
                          textStyle: TextStyle(letterSpacing: .1, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Center(
                        child: Icon(
                          Icons.brightness_1_rounded,
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text('1/3 łyżeczki przyprawy do ryb',
                          style: GoogleFonts.prompt(
                            textStyle:
                                TextStyle(letterSpacing: .1, fontSize: 16),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Center(
                        child: Icon(
                          Icons.brightness_1_rounded,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Szczypta soli, pieprzu, bazylii',
                          style: GoogleFonts.prompt(
                            textStyle:
                                TextStyle(letterSpacing: .1, fontSize: 16),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Center(
                        child: Icon(
                          Icons.brightness_1_rounded,
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text('2-3 łyżki oliwy z oliwek',
                          style: GoogleFonts.prompt(
                            textStyle:
                                TextStyle(letterSpacing: .1, fontSize: 16),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Center(
                        child: Icon(
                          Icons.brightness_1_rounded,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Opcjonalnie świeży rozmaryn lub kolendra',
                          style: GoogleFonts.prompt(
                            textStyle:
                                TextStyle(letterSpacing: .1, fontSize: 16),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Center(
                        child: Icon(
                          Icons.brightness_1_rounded,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Cytryna',
                        style: GoogleFonts.prompt(
                          textStyle: TextStyle(letterSpacing: .1, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
