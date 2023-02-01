import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CasseroleIngredients extends StatelessWidget {
  const CasseroleIngredients({super.key});

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
                          '1 dowolna, długa bagietka',
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
                        child: Text('300 g pieczarek',
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
                        child: Text('300 g sera mozzarella',
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
                        child: Text(
                          'Dotatki: sos/ketchup/prażona cebula',
                          style: GoogleFonts.prompt(
                            textStyle: const TextStyle(
                                letterSpacing: .1, fontSize: 16),
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
