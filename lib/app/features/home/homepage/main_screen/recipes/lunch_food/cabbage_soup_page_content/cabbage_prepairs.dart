import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CabbagePrepair extends StatelessWidget {
  const CabbagePrepair({super.key});

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
                          'Przygotowujemy składniki: wszystkie warzywa obieramy. Marchewkę ścieramy na drobnej tarce, pietruszkę kroimy wzdłuż na cztery części, selera dzielimy na większe kawałki, ziemniaki kroimy w kostkę i wrzucamy do garnka z zimną wodą, cebulę drobno siekamy. Boczek i słoninę również kroimy w kostkę. Czosnek obieramy.',
                          style: GoogleFonts.prompt(
                            textStyle: const TextStyle(
                                letterSpacing: .2, fontSize: 17),
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
                          'Do dużego garnka wrzucamy kości wędzone i nastawiamy wywar. Gdy się zagotuje, kilkakrotnie szumujemy, jeśli jest taka potrzeba. Następnie dorzucamy warzywa - marchewkę, pietruszkę, ziemniaki oraz selera. Dodajemy przyprawy: ziele angielskie, liść laurowy. Gotujemy wywar na małym ogniu pod przykryciem.',
                          style: GoogleFonts.prompt(
                            textStyle: const TextStyle(
                                letterSpacing: .2, fontSize: 17),
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
                          'Na rozgrzanej patelni kolejno smażymy i wrzucamy do zupy: boczek, słoninę, cebulę. Warto uważać na tłuszcz pryskający po kontakcie z wodą.',
                          style: GoogleFonts.prompt(
                            textStyle: const TextStyle(
                                letterSpacing: .2, fontSize: 17),
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
                          'Kapustę kiszoną próbujemy i w razie, jeśli jest bardzo kwaśna, delikatnie płuczemy. Odciskamy z nadmiaru soku i wody. Szatkujemy na krótsze nitki i dorzucamy do zupy wraz z obranym czosnkiem (ząbki w całości).',
                          style: GoogleFonts.prompt(
                            textStyle: const TextStyle(
                                letterSpacing: .2, fontSize: 17),
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
                          'Zupę gotujemy, aż wszystkie warzywa i kapusta będą miękkie. Na koniec wyławiamy kości, selera, czosnek i pietruszkę, doprawiamy kminkiem, koperkiem, solą i pieprzem.',
                          style: GoogleFonts.prompt(
                            textStyle: const TextStyle(
                                letterSpacing: .2, fontSize: 17),
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
                      Color.fromARGB(255, 137, 0, 0),
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
