import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class JarzynowaPrepair extends StatelessWidget {
  const JarzynowaPrepair({super.key});

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
                          'W pierwszej kolejności umyj dokładnie marchewki, korzenie pietruszki oraz kawałek selera (możesz go pominąć). Nie obieraj ich ze skórki. Tak samo ziemniaki (jeśli dodajesz je do sałatki). Warzywa umieść w garnku i gotuj pod przykryciem do miękkości. Nie gotuj ich jednak za długo, by były jędrne i nie rozpadały się w sałatce. Zazwyczaj nie gotują się dłużej niż 30 minut. Dużo zależy od grubości warzyw.',
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
                          'Po ugotowaniu od razu wyjmij warzywa z wody i odłóż do lekkiego przestudzenia. Obierz je ze skórki i posiekaj drobno. Cztery średniej wielkości jajka ugotuj na twardo.Na szybko: Jajka umieść w garnku z jeszcze zimną wodą. Czas odmierzasz od momentu zagotowania się wody w garnku. Pilnuj wówczas, by woda cały czas się gotowała, jednak nie za mocno. Średnie jajka nie gotują się na twardo dłużej niż dziewięć minut. Po ugotowaniu polecam od razu zalać jajka zimną wodą, jednocześnie lekko obijając skorupkę jajka. Po chwili możesz je obrać i odłożyć na talerz do przestudzenia a potem do posiekania.',
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
                          'W mojej sałatce zazwyczaj jest por. Odcinek około 10 cm, czyli mniej więcej 50 gramów. Biały odcinek pora szatkuję i sparz na sitku wrzątkiem. Sitko trzymam zawsze w zlewie. Przelewam pora wrzątkiem z czajniczka. Po przestudzeniu por jest już gotowy do dodania do sałatki. Zamiast pora możesz poszatkować małą cebulę lub też pominąć pora oraz cebulę.',
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
                          'Ogórki kiszone obierz cienko ze skóry i odetnij końce. Poszatkuj je w drobną kosteczkę. Soczyste, twarde i najlepiej lekko kwaśne jabłko obierz i wytnij całe gniazdo nasienne. Pokrój je podobnie jak ogórki. Ja daję jedno małe jabłko, ale śmiało możesz dać większe jabłko oraz więcej ogórków kiszonych.',
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
                          'Groszek konserwowy odcedź z zalewy i umieść w misce z pozostałymi składnikami sałatki jarzynowej. Dodaj cztery łyżki dobrej jakości majonezu oraz tyle samo jogurtu naturalnego. Całość delikatnie, ale dokładnie wymieszaj i sprawdź smak sałatki. Dodaj pół płaskiej łyżeczki soli oraz 1/4 płaskiej łyżeczki pieprzu i jeszcze raz wszystko zamieszaj.',
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
                          'W razie potrzeby lub upodobań smakowych możesz dodać więcej soli i pieprzu. Pamiętaj jednak o tym, że warto dodawać przyprawy po troszeczku a następnie smakować i decydować o tym, czy jeszcze czegoś nam brakuje.',
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
