// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class RoladaPrepair extends StatelessWidget {
  const RoladaPrepair({super.key});

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
                          'Zrób tak: weź plastry wołowiny z udźca, rozbiją ją cienko, posyp solą i pieprzem, posmaruj zwykłą musztardą. Na skraju rozłóż pokrojone w słupki ogórki kiszone i boczek oraz pokrojoną kiełbasę. Posyp odrobiną cebuli. Dodatków musi być tyle, aby mięso dało się szczelnie zwinąć. Gdy już to zrobisz, obwiąż rolady sznurkiem, aby nie rozwinęły się podczas gotowania. Obsmaż je na gorącym tłuszczu, dodaj poszatkowaną w kostkę cebulę, smaż jeszcze chwilę, posyp słodką papryką w proszku, podlej wodą i duś, aż mięso będzie miękkie. Może to zająć nawet dwie godziny. Rolady wyjmij, usuń nitkę, a sos zagęść mąką rozrobioną z ciepłą wodą. Możesz go wcześniej zblendować.',
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
                          'Kapustę poszatkuj lub zetrzyj na tarce. W garnku na oleju przesmaż cebulę. Zamiast oleju możesz użyć boczku, który należy wytopić – tak jest bardziej tradycyjnie, jednak ciężej. Do przesmażonej cebuli dodaj łyżkę mąki, zasmaż, wlej  szklankę wody, zagotuj cały czas mieszając, dodaj kapustę i dokładnie wymieszaj. Gotuj pod przykryciem ma małym ogniu przez około 15 min., co jakiś czas mieszając aż kapusta zrobi się miękka. Jeśli kapusta będzie przywierać, uzupełnij wodę. Dopraw octem (kapusta pięknie zmieni kolor) i przyprawami. Podawaj na ciepło.',
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
                          'Ugotowane ziemniaki przepuść przez praskę lub dokładnie utłucz – masa musi być zupełnie gładka. Podziel ją na cztery części, jedną wyjmij, a puste miejsce uzupełnij mąką ziemniaczaną. Dodaj żółtko i wyrób jednolite ciasto, z którego formuj niewielkie kluski, robiąc palcem dziurkę na każdej z nich – to specjalne miejsce na sos. Kluski wrzucaj do osolonej gotującej się wody, wyjmuj dwie minuty po wypłynięciu.',
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
                          'Rada: roladę, sos, kluski i kapustę najlepiej podać na jednym talerzu. Wtedy ślonski łobiod smakuje najlepiej.',
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
