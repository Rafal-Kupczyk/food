// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class KotletPrepair extends StatelessWidget {
  const KotletPrepair({super.key});

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
                          'Piersi z kurczaka należy dokładnie umyć, usunąć błony. Podzielić na mniejsze kawałki, łatwe do rozbicia. Tłuczkiem rozbić z dwóch stron kotlety.',
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
                          'Rozbite kotlety dokładnie z dwóch stron posypać przyprawą do mięs.',
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
                          'Przyszykować trzy talerze - mogą być głębokie. Do pierwszego wsypać mąkę przesianą przez sitko, do drugiego bułkę tartą, a do trzeciego należy wbić jajka. Jajka należy roztrzepać widelcem i doprawić solą i pieprzem.',
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
                          'Kotlety należy obtaczać najpierw w mące, później w roztrzepanym jajku a na końcu w bułce tartej. Jeżeli zostanie nam trochę jajka i bułki, to możemy w nich obtoczyć kotlet dwukrotnie. Będą miały wtedy wtedy grubszą panierkę.',
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
                          'Po obtoczeniu kotletów, należy przygotować patelnię do smażenia. Na suchą, rozgrzaną patelnię wlewamy olej. Gdy olej osiągnie odpowiednio wysoką temperaturę, układamy kotlety na patelni.',
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
                          'Smażymy kotlety na dobrze rozgrzanej patelni przez kilka minut z każdej strony, aż nabiorą złocistego koloru, wpadającego w brąz.',
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
