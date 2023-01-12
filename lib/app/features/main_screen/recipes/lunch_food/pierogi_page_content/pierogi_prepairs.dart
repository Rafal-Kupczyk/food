// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class PierogiPrepair extends StatelessWidget {
  const PierogiPrepair({super.key});

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
                          'Do zrobienia pierogów potrzebujesz również: czysty blat lub stolnica do wałkowania ciasta; wałek; okrągła wykrawaczka do pierogów lub szklankę średnica około 7-9 cm; bawełniana ściereczka; szeroki garnek; i cedzak do łowienia pierogów.',
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
                          'Obierz około 650-700 gramów ziemniaków i ugotuj do miękkości w osolonej wodzie. Odlej wodę, dokładnie osusz i zmiel ziemniaki lub ubij tłuczkiem na puree. Powinno Ci wyjść nie więcej niż 500 gramów masy ziemniaczanej. Puree odstaw do przestudzenia. Do miski ze zmielonymi ziemniakami dodaj też po pół płaskiej łyżeczki soli i pieprzu.',
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
                          'Porada: Ugotowane ziemniaki najlepiej jest zmielić w maszynce lub przepuścić przez praskę jeszcze lekko ciepłe. Pamiętaj o tym, że ciepłe ziemniaki łatwiej jest przepuścić przez praskę niż zimne z lodówki, które robią się wtedy twarde. Jeśli jednak mielisz ziemniaki w maszynce, to możesz też użyć ziemniaków z obiadu, z dnia poprzedniego. Wówczas mogą być też zimne.',
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
                          'Dużą cebulę obierz i poszatkuj. Możesz też użyć kilku mniejszych sztuk o łącznej wadze około 300 gramów. Na nagrzaną patelnię dodaj dwie łyżki masła klarowanego. Dodaj poszatkowaną cebulę i podsmażaj na średniej mocy palnika przez około 10 minut. Masło możesz zastąpić delikatną oliwą lub innym ulubionym olejem do smażenia.',
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
                          'Do farszu potrzebujesz 300 gramów twarogu. Możesz użyć twaróg półtłusty lub tłusty w kostce, typu krajanka (w bloczkach) lub też w "trójkącie" pakowany w papier. Twaróg można zmielić w maszynce lub też przepuścić przez ręczną praskę. Do farszu na pierogi ruskie nie używam twarogu mielonego sernikowego w wiaderku, ponieważ nawet te bardzo dobrej jakości twarogi mielone nie są tak zwarte, jak te sprzedawane w kostce.',
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
                          'Masę ziemniaczaną, zmielony twaróg, zeszkloną z masłem cebulę oraz sól i pieprz wymieszaj razem w jednej misce. Farsz na pierogi ruskie jest już gotowy.',
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
                          'Przygotuj ciasto na ruskie pierogi. Do szerokiej miski przesiej mąkę. Pół kilograma mąki, to połowa standardowego opakowania o wadze jednego kilograma. Dodaj pół łyżeczki soli oraz cztery łyżki oleju np. rzepakowego. Olej z pestek winogron oraz inne oleje o delikatnym smaku również się sprawdzą. Wlej szklankę gorącej, przegotowanej wody i zamieszaj ciasto łyżką a następnie zacznij je wyrabiać.',
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
                          'Ciasto można też śmiało wyrabiać w maszynie np. w Thermomix. Ciasto powinno być miękkie, plastyczne i elastyczne.',
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
                          'Gotową kulę ciasta zawiń w folię i odłóż na 30 minut. Ciasto po leżakowaniu nie będzie się kurczyć podczas wałkowania.',
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
                          'Po tym czasie ciasto odwiń z folii i podziel na 3 części. Dwa kawałki odłóż na bok i przykryj bawełnianą ściereczką, by ciasto nie obsychało.',
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
                          'Jeden kawałek rozwałkuj cienko na stolnicy lub na blacie lekko oprószonym mąką. Przy pomocy wykrawaczki o średnicy około 8 cm wycinaj okrągłe placki pod pierogi.  Na środek placka nakładaj farsz na pierogi ruskie. Daję zawsze sporo farszu. Kulkę farszu lekko spłaszczam na kształt wałeczka, by idealnie wypełnić wnętrze pieroga. Pierogi składaj na pół i sklejaj boki. Po sklejeniu łączenia polecam wykonać dodatkowo falbankę.',
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
                          'Porada: Resztki ciasta po wykrawaniu pierogów zbieraj i na koniec połącz w jedną kulę. Ponownie rozwałkuj ciasto i wycinaj placki pod pierogi. Z resztek ciasta możesz też ugotować na koniec kluski z ciasta na pierogi.',
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
                          'Pierogi układaj obok siebie na stolnicy. Aby oczekujące na gotowanie pierogi nie schły, przykryj je lekko wilgotną bawełnianą ściereczką.',
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
                          'Każdą serię umieszczaj w garnku z osoloną, gotującą się wodą. Woda nie powinna mocno bulgonić. Pierogi wyławiaj po około 3-4 minutach od ich wypłynięcia na powierzchnię W ten sposób ugotuj wszystkie pierogi. Wyszło mi około 60 pierogów.',
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
                          'Gotowe pierogi ruskie polałam masłem klarowanym z zeszkloną cebulą. Taką okrasę szykujesz identycznie, jak cebulkę na maśle, którą wykorzystujesz do zrobienia farszu na ruskie.',
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
