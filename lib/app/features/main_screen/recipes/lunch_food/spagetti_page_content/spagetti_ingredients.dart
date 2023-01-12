
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpagettiIngredients extends StatelessWidget {
  const SpagettiIngredients({super.key});

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
                        '1 kg mięsa mielonego',
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
                      Text('1 cebula',
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
                      Text('5 ząbków czosnku',
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
                      Text('3 pomidory',
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
                      Text('Olej',
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
                      Text('Makaron spagetti',
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
                      Text('Przyprawa do mięsa mielonego',
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
                      const SizedBox(
                        width: 20,
                      ),
                      Text('Sos do spagetti',
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
                      Text('Czerwone wino',
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
