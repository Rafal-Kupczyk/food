import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CasserolePrepair extends StatelessWidget {
  const CasserolePrepair({super.key});

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
                          'Domowe zapiekanki wychodzą najlepsze na klasycznej bagietce pszennej. Aby zrobić cztery spore zapiekanki potrzebujesz jedną, długą bagietkę. Wystarczy przekroić ją równo wzdłuż na pół, a potem jeszcze w poprzek każdą na pół. Otrzymasz cztery porcje pod zapiekanki. Bagietka nie musi być idealnie świeża, chociaż im świeższa bułeczka, tym lepiej. Jeśli masz wczorajszą i już lekko podsuszoną oraz twardawą bagietkę, to nic się nie martw. Wystarczy zwilżyć dłonie wodą i mokrymi palcami "dotykać" pokrojone bagietki w suchych miejscach. W piekarniku ponownie zmiękną, a po chwili również zarumienią się apetycznie.',
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
                          'Porada: Do zrobienia zapiekanek można użyć dowolnych bagietek np. pełnoziarnistych lub żytnich. Sprawdzą się też wszelkie podłużne bułki oraz ciabatty.',
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
                          'Przygotuj sobie około 300 gram pieczarek. Kapelusze dużych pieczarek zazwyczaj obieram. Mniejsze tylko ewentualnie oczyszczam w razie potrzeby. Pieczarki zetrzyj na tarte, na dużych oczkach do warzyw. 300 gramów sera mozzarella w kostce (nie ten biały z zalewy) również zetrzyj na tarce, na tych samych oczkach. Do miski ze startymi pieczarkami i serem wsyp łyżeczkę ziół włoskich/prowansalskich, a następnie delikatnie wymieszaj całość. Robię to dłońmi, by nie zgniatać startego sera i pieczarek. ',
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
                          'Porady: Zamiast mozzarelli świetnie sprawdzi się też dobry żółty ser. Oprócz ziół można dosypać trochę pieprzu lub słodkiej papryki. Zamiast ziołowej mieszczanki zalecam dodać np. przyprawę do gyros lub też mieszankę przypraw kuchni meksykańskiej. Ciekawym dodatkiem smakowym jest też przyprawa zatar. Warto poeksperymentować z przyprawami, by nadać zapiekankom specyficznego smaku.',
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
                          'Do mieszanki mozzarelli z pieczarkami można też dodać pokrojone drobniej plasterki szynki lub salami. Małe kawałeczki boczku, kiełbasy też tutaj pasują. Tak samo świeża, super cienko pokrojona papryka lub odrobina drobniutko posiekanej cebulki.',
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
                          'Piekarnik nagrzej do około 200 stopni. Ja ustawiam 200 stopni z opcją grillowania od góry. Jeśli nie masz tej funkcji, to może być też termoobieg lub grzanie góra/dół. Zapiekanki wyjdą na każdym ustawieniu. Trzeba jednak pilnować ich cały czas, ponieważ wystarczy chwila nieuwagi i zapiekanki błyskawicznie się spiekają.',
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
                          'Cieńszą blaszkę z wyposażenia piekarnika wyłóż papierem do pieczenia. Blaszki nie umieszczam wyżej niż na środkowej półce, by bagietki nie podpiekały się za szybko. Jeśli masz "wczorajsze" bagietki, to zalecam je w pierwszej kolejności lekko podpiec przez chwilę spodem do góry. Może to trwać około dwóch minut, a może i trochę dłużej. Następnie odwróć kawałki bagietki płaską stroną do góry i podpiekaj chwile bułki jeszcze bez dodatków. Dzięki temu zapiekanki wychodzą zawsze idealnie rumiane i super chrupiące. Jeśli masz świeżutką bagietkę, to wystarczy, że podpieczesz kawałki bagietki tylko płaską stroną do góry. Będzie to trwało zapewne nie dłużej niż dwie minuty. Jak tylko brzegi zaczną się lekko rumienić, należy ostrożnie wysunąć szufladę z blaszką i na każdą bułkę wyłożyć solidną porcję mieszanki sera i pieczarek. Ponownie umieść blaszkę w piekarniku i obserwuj zapiekanki w komorze. Zapiekanki mogą być idealnie rumiane na bokach już po pięciu minutach pieczenia (albo i trochę dłużej). Jeśli ser i bułki rumienią się szybciej, to zapewne bagietki znajdują się za blisko nagrzanych grzałek lub też ustawiona została zbyt wysoka temperatura.',
                          style: GoogleFonts.prompt(
                            textStyle: const TextStyle(
                                letterSpacing: .2, fontSize: 17),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
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
                          'Gorące zapiekanki będą idealnie chrupiące na zewnątrz i mięciutkie w środku. Klasyczny ketchup pasuje do nich idealnie. Jeśli jednak masz w swoich zapasach domowy ketchup z cukinii z mojego przepisu, to jest to idealny moment, by go użyć.',
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
                          'Pysznym dodatkiem będzie też sos czosnkowy. Można też pominąć ketchup i sos i na gotowe zapiekanki wyłożyć plastry świeżych pomidorów oraz siekany szczypiorek lub listki bazylii. Jeśli lubisz oliwki i sałatę rukolę, to śmiało możesz wyłożyć je na swoje zapiekanki.',
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
