import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class PancakesPrepair extends StatelessWidget {
  const PancakesPrepair({super.key});

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
                          '500 gramów twarogu zmiel w maszynce na średnich oczkach lub tylko ugnieć dokładnie widelcem. Gładkiego sera twarogowego śmietankowego oraz takiego z kubełka nie trzeba już mielić. Do twarogu dodaj też żółtko jajka (można pominąć); minimum trzy łyżki cukru; dwie łyżki kwaśnej śmietany lub kremowego jogurtu naturalnego oraz odrobinę nasion z laski wanilii, lub tez pastę albo esencję waniliową. Bardzo dokładnie wymieszaj słodki twaróg do naleśników.',
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
                          'Porada: Twarogu nie trzeba mielić maszynce. Jeśli lubisz mniej jednolite masy, to można go też śmiało tylko ugnieść widelcem. Aby otrzymać luźniejszą masę można też śmiało dać więcej śmietany, jogurtu, czy też nawet słodkiej śmietanki 30 %.',
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
                          'Pora na ciasto naleśnikowe, które możesz też zrobić w pierwszej kolejności. Jeśli masz już roztopione i przestudzone masło, to samo wymieszanie składników zajmie tylko chwilę. Masło można też zamienić na olej roślinny lub roztopiony olej kokosowy. W obu przypadkach będzie to również 50 gramów produktu.',
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
                          'Do dużej miski wsyp 210 gramów mąki pszennej np. tortowej. Wbij trzy jajka trzymane w temperaturze pokojowej. Wlej też szklankę ciepłej wody i pół szklanki ciepłego mleka. Do tego jeszcze łyżka drobnego cukru i ewentualnie szczypta soli. Całość wymieszaj dokładnie przy pomocy miksera lub blendera ręcznego typu żyrafa. Na koniec wlej masło. Roztopione masło wlewaj do ciasta cienką strużką. Ciasto naleśnikowe mieszaj dalej jeszcze chwilę. Możesz je odstawić na 10 minut, by odpoczęło. Nie jest to jednak konieczne, jeśli tylko mleko i woda nie były zimne.',
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
                          'Dobrze nagrzej płaską patelnię, najlepiej specjalnie przystosowaną do smażenia naleśników. Nie ustawiaj od razu najwyższej mocy palnika. Ustaw średnią moc i poczekaj aż ciepło rozprowadzi się równo po całej powierzchni użytkowej patelni. Nie natłuszczaj patelni.',
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
                          'Zamieszaj ciasto i małą chochlą odmierz porcję na naleśnika. Wylej na patelnię tyle ciasta, by masa swobodnie przykryła powierzchnię patelni. Placki na naleśniki z serem smażę trochę grubsze niż zawsze. Przy każdym nalewaniu porcji na naleśnika podnoszę patelnię nad palnik. Od razu poruszam patelnią tak, by ciasto rozeszło się po całej powierzchni.',
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
                          'Po około minucie przewracaj placek na drugą stronę. Druga strona potrzebuje zazwyczaj trochę mniej czasu, czyli około 30-40 sekund. Tutaj może Ci się przydać płaska łopatka do przewracania naleśników.',
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
                          'W ten sposób usmaż wszystkie naleśniki. Jeśli naleśnik po zdjęciu na talerz nie będzie elastyczny, to nic się nie martw. Smażąc naleśniki kładź jeden placek na drugim a po usmażeniu wszystkich naleśników przykryj je folią. W ciągu kilku minut naleśniki zmiękną i zrobią się idealnie elastyczne. Wyszło mi równo 10 naleśników.',
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
                          'Farsz do naleśników warto podzielić sobie na tyle porcji, ile jest naleśników. Jeśli składasz naleśniki w kopertę, to ser wyłóż tylko na połowę naleśnika a następnie składaj go na pół, by drugą połową naleśnika zakryć farsz a potem jeszcze na pół. ',
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
                          'Jeśli naleśniki zwijasz w rulonik to farsz serowy możesz rozsmarować po całej powierzchni każdego naleśnika.',
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
                          'Przygotuj sobie wszystkie naleśniki z serem. Teoretycznie są one gotowe do podania. Nie są jednak ciepłe a ser jest oczywiście zimny. Dlatego też przed podaniem polecam albo podsmażyć, albo zapiec w piekarniku.',
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
