

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TortillaIngredients extends StatelessWidget {
  const TortillaIngredients({super.key});

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
                      Text(
                        '300 gram filetu z kurczaka',
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
                      Text('4 Tortilla wraps',
                          style: GoogleFonts.prompt(
                            textStyle:
                                const TextStyle(letterSpacing: .1, fontSize: 16),
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
                      Text('Sałata lodowa',
                          style: GoogleFonts.prompt(
                            textStyle:
                                const TextStyle(letterSpacing: .1, fontSize: 16),
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
                            textStyle:
                                const TextStyle(letterSpacing: .1, fontSize: 16),
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
                            textStyle:
                                const TextStyle(letterSpacing: .1, fontSize: 16),
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
                      Text('Papryka',
                          style: GoogleFonts.prompt(
                            textStyle:
                                const TextStyle(letterSpacing: .1, fontSize: 16),
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
                      Text('Ser żółty',
                          style: GoogleFonts.prompt(
                            textStyle:
                                const TextStyle(letterSpacing: .1, fontSize: 16),
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
                      Text('Przyprawa do kurczaka',
                          style: GoogleFonts.prompt(
                            textStyle:
                                const TextStyle(letterSpacing: .1, fontSize: 16),
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
                            textStyle:
                                const TextStyle(letterSpacing: .1, fontSize: 16),
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
                            textStyle:
                                const TextStyle(letterSpacing: .1, fontSize: 16),
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
