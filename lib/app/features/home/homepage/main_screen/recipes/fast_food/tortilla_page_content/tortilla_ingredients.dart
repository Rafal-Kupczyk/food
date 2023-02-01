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
                      Expanded(
                        child: Text(
                          '300 gram filetu z kurczaka',
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
                        child: Text('4 Tortilla wraps',
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
                        child: Text('Sałata lodowa',
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
                        child: Text('Czerwona cebula',
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
                        child: Text('Pomidor',
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
                        child: Text('Papryka',
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
                        child: Text('Ser żółty',
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
                        child: Text('Przyprawa do kurczaka',
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
                        child: Text('Sos czosnkowy/ostry',
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
                        child: Text('Olej do smażenia',
                            style: GoogleFonts.prompt(
                              textStyle: const TextStyle(
                                  letterSpacing: .1, fontSize: 16),
                            )),
                      ),
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
