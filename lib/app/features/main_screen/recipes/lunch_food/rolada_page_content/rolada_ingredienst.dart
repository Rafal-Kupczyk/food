// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoladaIngredients extends StatelessWidget {
  const RoladaIngredients({super.key});

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
                          'Rolada: duże plastry wołowiny (najlepiej z udźca), musztarda, kiełbasa śląska, plastry boczku, ogórek kiszony, cebula, sól, pieprz.',
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
                        child: Text(
                            'Modro kapusta: główka kapusty czerwonej, dwie duże cebule, olej, ocet, cukier, sól, pieprz, łyżka mąki',
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
                        child: Text(
                            'Kluski śląskie: kilogram ugotowanych i ostudzonych ziemniaków, mąka ziemniaczana, żółtko.',
                            style: GoogleFonts.prompt(
                              textStyle:
                                  TextStyle(letterSpacing: .1, fontSize: 16),
                            )),
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
