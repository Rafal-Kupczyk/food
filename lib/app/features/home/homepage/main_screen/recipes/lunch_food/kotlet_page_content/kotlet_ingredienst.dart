import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KotletIngredients extends StatelessWidget {
  const KotletIngredients({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: ListView(
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
                          '600 g pierśi z kurczaka',
                          style: GoogleFonts.prompt(
                            textStyle: const TextStyle(
                                letterSpacing: .1, fontSize: 16),
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
                        child: Text('Jajko',
                            style: GoogleFonts.prompt(
                              textStyle: const TextStyle(
                                  letterSpacing: .1, fontSize: 16),
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
                        child: Text('Bułka tarta',
                            style: GoogleFonts.prompt(
                              textStyle: const TextStyle(
                                  letterSpacing: .1, fontSize: 16),
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
                        child: Text('Mąka',
                            style: GoogleFonts.prompt(
                              textStyle: const TextStyle(
                                  letterSpacing: .1, fontSize: 16),
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
                        child: Text('Olej lub masło',
                            style: GoogleFonts.prompt(
                              textStyle: const TextStyle(
                                  letterSpacing: .1, fontSize: 16),
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
                        child: Text('Przyprawa do mięs',
                            style: GoogleFonts.prompt(
                              textStyle: const TextStyle(
                                  letterSpacing: .1, fontSize: 16),
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
