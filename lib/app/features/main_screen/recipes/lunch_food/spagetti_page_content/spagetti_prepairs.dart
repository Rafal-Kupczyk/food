// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SpagettiPrepair extends StatelessWidget {
  const SpagettiPrepair({super.key});

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
                          'Tak więc zaczynamy nasze gotowanie. Na patelnie dajemy ok. 3 łyżki oleju i mięso mielone. Przyprawiamy je papryką słodka i ostrą (nie za dużo) pieprz oraz rosołek Winiary. Wszystko podlewamy odrobiną wody.',
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
                          'Następnie blenderujemy bądź siekamy na bardzo drobno cebulę i czosnek i dodajemy do mięsa. Teraz czas na pomidorki. Ja obrałem je ze skórki i pokroiłem. Następnie dajemy do osobnego garnka i podlewamy ok 1/2 szklanki wody. Pomidory albo zgniatamy albo blenderujemy i solimy. Gdy się zagotują zbieramy tzw. szumowinę, a następnie dodajemy do mięsa. Moje pomidorki były bardzo słodkie i łagodne więc do mięsa dodałam jeszcze trochę ketchupu pikantnego.',
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
                          'W międzyczasie gotujemy osoloną wodę z 2 łyżkami oliwy na makaron. Po zagotowaniu się wody dodajemy makaron i gotujemy ok 20 minut. Następnie makaron przelewamy zimną wodą czyli hartujemy. Makaron wykładamy na talerz i dajemy mięso z sosem.',
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
