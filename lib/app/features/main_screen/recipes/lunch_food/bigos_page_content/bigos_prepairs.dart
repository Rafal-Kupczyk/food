
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class BigosPrepair extends StatelessWidget {
  const BigosPrepair({super.key});

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
                          'Po pierwsze – posmakować kapusty i ocenić czy konieczne jest płukanie z nadmiaru kwasu. Bigos ma być wyraźny – ale umiarkowanie kwaśny. Także oceńcie, wyczujcie.',
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
                          'Przepłukaną lub nie kapustę należy pociąć na krótsze kawałki. Zalać 2 szklankami wody i zacząć gotować z liśćmi laurowymi, zielem angielskim, pieprzem w kulkach i garścią śliwek. W razie potrzeby dolewać wody.',
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
                          'W osobnym garnku wstawić pokrojoną na mniejsze kawałki szynkę lub łopatkę (ja użyłam łopatki), dodać marchew, por, pietruszkę i kostką rosołową – gotować do miękkości mięsa równolegle z kapustę.',
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
                          'Cebulę podsmażyć z kiełbasą na odrobinie oleju i dodać do kapusty po około godzinie jej gotowania.',
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
                          'Miękkie mięso wieprzowe pokroić w mniejsze (bigosowe) kawałki i dodać do kapusty. Jeśli mięso długo nie mięknie – a Wy już nie możecie doczekać się bigosu, polecam podlać mięso odrobiną wódki i pogotować jeszcze 10 minut – mięso zmięknie, gwarantuję. Ten sam trik możecie zastosować kapuście.',
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
