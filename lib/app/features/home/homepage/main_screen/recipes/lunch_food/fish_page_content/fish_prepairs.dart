
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class FishPrepair extends StatelessWidget {
  const FishPrepair({super.key});

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
                      const SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          'Piekarnik nagrzewamy do temp. 210 stopni.Filety z ryby myjemy, osuszamy za pomocą papierowego ręcznika i dzielimy na 4-5 porcji. Usuwamy ewentualne ości.Ja kupiłem łososia ze skórą i jej nie wycinałem nożem. Jeśli chcesz to ją usuń.',
                          style: GoogleFonts.prompt(
                            textStyle:
                                const TextStyle(letterSpacing: .2, fontSize: 17),
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
                          'W miseczce mieszamy oliwę z oliwek (2-3 łyżki, opcjonalnie zastąpić masłem klarowanym) z przyprawami – sól, pieprz, bazylia (szczypta), przyprawę do ryb (1/3 łyżeczki), suszone pomidory (1/3 łyżeczki, lub paprykę słodką). Jeśli macie to opcjonalnie można dodać łyżeczkę posiekanej świeżej kolendry czy rozmarynu.Przygotowaną mieszanką smarujemy wierzch kawałków ryby.',
                          style: GoogleFonts.prompt(
                            textStyle:
                                const TextStyle(letterSpacing: .2, fontSize: 17),
                          ),
                        ),
                      )
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
                          'Następnie układamy rybę i posypujemy sezamem czy czarnuszką.Wkładamy do nagrzanego piekarnika i pieczemy przez 15-18 minut (góra-dół, np. z termoobiegiem).',
                          style: GoogleFonts.prompt(
                            textStyle:
                                const TextStyle(letterSpacing: .2, fontSize: 17),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Center(
                  child: GradientText(
                    'Smacznego! :)',
                    style: GoogleFonts.prompt(
                      textStyle: const TextStyle(
                        letterSpacing: 2,
                        fontSize: 40,
                      ),
                    ),
                    gradientType: GradientType.radial,
                    radius: 2,
                    colors: const [
                      Color.fromARGB(255, 0, 0, 0),
                      Color.fromARGB(255, 255, 17, 0),
                      Color.fromARGB(255, 255, 4, 209),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
