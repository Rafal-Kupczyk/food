// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class PizzaPrepair extends StatelessWidget {
  const PizzaPrepair({super.key});

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
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          'Świeże drożdże ocieplić w temperaturze pokojowej. Przygotować rozczyn: drożdże rozpuścić w ciepłej wodzie, dodać 2 łyżki mąki oraz cukier, dokładnie wymieszać i odstawić na ok. 10 minut do wyrośnięcia (rozczyn ze świeżych drożdży zwiększa objętość o ok. 3 razy - jeśli tak się nie stanie proces przygotowania rozczynu trzeba powtórzyć od nowa, natomiast rozczyn z drożdży instant może się tylko trochę spienić).',
                          style: GoogleFonts.prompt(
                            textStyle:
                                TextStyle(letterSpacing: .2, fontSize: 17),
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
                          'Mąkę przesiać do miski, wymieszać z solą, zrobić wgłębienie w środku i wlać w nie rozczyn. Sukcesywnie zagarniać łyżką mąkę do środka i przez 2 - 3 minuty mieszać składniki, pod koniec dodając jeszcze oliwę.',
                          style: GoogleFonts.prompt(
                            textStyle:
                                TextStyle(letterSpacing: .2, fontSize: 17),
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
                      Center(
                        child: Icon(
                          Icons.brightness_1_rounded,
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          'Połączone składniki wyłożyć na stolnicę oprószoną mąką. Wyrabiać przez ok. 15 minut aż ciasto będzie elastyczne i gładkie (ciasto można też zagnieść mikserem planetarnym).',
                          style: GoogleFonts.prompt(
                            textStyle:
                                TextStyle(letterSpacing: .2, fontSize: 17),
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
                      Center(
                        child: Icon(
                          Icons.brightness_1_rounded,
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          'Wyrobione ciasto włożyć do dużej miski, przykryć ściereczką i odstawić na ok. 1 godzinę do wyrośnięcia.',
                          style: GoogleFonts.prompt(
                            textStyle:
                                TextStyle(letterSpacing: .2, fontSize: 17),
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
                      Center(
                        child: Icon(
                          Icons.brightness_1_rounded,
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          'Wyrośnięte ciasto wyjąć na stolnicę i chwilę pozagniatać. Podzielić na 2 części, uformować z nich kulki i odłożyć na ok. 7 minut pod ściereczką.',
                          style: GoogleFonts.prompt(
                            textStyle:
                                TextStyle(letterSpacing: .2, fontSize: 17),
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
                      Center(
                        child: Icon(
                          Icons.brightness_1_rounded,
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          'Blaszki (tortownice) posmarować oliwą. Włożyć na środek kulkę ciasta, delikatnie spłaszczyć i rozciągać, rozprowadzając palcami po całej powierzchni dna, zaczynając od środka i zostawiając niewielki "wałeczek" na brzegu (zob. zdjęcia poniżej). UWAGA: najlepiej robić to kilkoma etapami, ciasto na początku sprężynuje i "cofa się" ale jeśli odczekamy chwilę będziemy mogli je dalej rozciągać.',
                          style: GoogleFonts.prompt(
                            textStyle:
                                TextStyle(letterSpacing: .2, fontSize: 17),
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
                      Center(
                        child: Icon(
                          Icons.brightness_1_rounded,
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          'Wyłożyć cienką warstwę SOSU POMIDOROWEGO, ser* oraz ulubione dodatki. Odczekać ok. 15 minut aż ciasto podrośnie, następnie piec w maksymalnie nagrzanym piekarniku (min. 250 st. C) przez ok. 10 minut.',
                          style: GoogleFonts.prompt(
                            textStyle:
                                TextStyle(letterSpacing: .2, fontSize: 17),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Center(
                  child: GradientText(
                    'Smacznego! :)',
                    style: GoogleFonts.prompt(
                      textStyle: TextStyle(
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
