// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CezarIngredients extends StatelessWidget {
  const CezarIngredients({super.key});

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
                      Expanded(
                        child: Text(
                          '2 średnie sałaty rzymskie',
                          style: GoogleFonts.prompt(
                            textStyle:
                                TextStyle(letterSpacing: .1, fontSize: 16),
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
                      Center(
                        child: Icon(
                          Icons.brightness_1_rounded,
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text('Pół długiej bagietki pszennej',
                            style: GoogleFonts.prompt(
                              textStyle:
                                  TextStyle(letterSpacing: .1, fontSize: 16),
                            )),
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
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text('1 podwójna pierś z kurczaka - do 600 g',
                            style: GoogleFonts.prompt(
                              textStyle:
                                  TextStyle(letterSpacing: .1, fontSize: 16),
                            )),
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
                      Expanded(
                        child: Text('2 łyżki oleju do smażenia lub oliwy',
                            style: GoogleFonts.prompt(
                              textStyle:
                                  TextStyle(letterSpacing: .1, fontSize: 16),
                            )),
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
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text('50 g drobno tartego parmezanu',
                            style: GoogleFonts.prompt(
                              textStyle:
                                  TextStyle(letterSpacing: .1, fontSize: 16),
                            )),
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
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          '7 łyżek dobrej jakości majonezu - około 160 g',
                          style: GoogleFonts.prompt(
                            textStyle:
                                TextStyle(letterSpacing: .1, fontSize: 16),
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
                      Center(
                        child: Icon(
                          Icons.brightness_1_rounded,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          '1 płaska łyżka ostrej musztardy - około 15 g',
                          style: GoogleFonts.prompt(
                            textStyle:
                                TextStyle(letterSpacing: .1, fontSize: 16),
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
                      Center(
                        child: Icon(
                          Icons.brightness_1_rounded,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          '1 ząbek czosnku',
                          style: GoogleFonts.prompt(
                            textStyle:
                                TextStyle(letterSpacing: .1, fontSize: 16),
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
                      Center(
                        child: Icon(
                          Icons.brightness_1_rounded,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          '2 łyżki soku z cytryny',
                          style: GoogleFonts.prompt(
                            textStyle:
                                TextStyle(letterSpacing: .1, fontSize: 16),
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
                      Center(
                        child: Icon(
                          Icons.brightness_1_rounded,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          '1 łyżka sosu worcestershire lub 1 filet anchois z sardeli',
                          style: GoogleFonts.prompt(
                            textStyle:
                                TextStyle(letterSpacing: .1, fontSize: 16),
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
                      Center(
                        child: Icon(
                          Icons.brightness_1_rounded,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          '4 łyżki drobno tartego parmezanu - około 35 g',
                          style: GoogleFonts.prompt(
                            textStyle:
                                TextStyle(letterSpacing: .1, fontSize: 16),
                          ),
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
