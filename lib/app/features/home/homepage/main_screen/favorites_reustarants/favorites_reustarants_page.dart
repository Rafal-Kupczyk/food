import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:food/App/features/home/homepage/main_screen/favorites_reustarants/add_reustarants_page.dart';
import 'package:food/App/features/home/homepage/main_screen/favorites_reustarants/reustarants_page_content/reustarants_page.dart';
import 'package:food/App/features/home/random/widgets/app_bar_color.dart';

import 'package:food/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color.fromARGB(255, 234, 237, 240),
            Color.fromARGB(255, 176, 255, 183),
          ],
          tileMode: TileMode.mirror,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          flexibleSpace: const AppBarColorPage(),
          actions: [
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: const Text(
                          'Jeśli chcesz usunać pozycje, przeciągnij w którąs stronę.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(Icons.question_mark),
            )
          ],
        ),
        body: Builder(builder: (context) {
          if (currentIndex == 0) {
            return const ReustarantsPage();
          }
          if (currentIndex == 1) {
            return AddReustarantsPage(onSave: () {
              setState(() {
                currentIndex = 0;
              });
            });
          }
          throw {};
        }),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 245, 157, 6),
          selectedItemColor: const Color.fromARGB(255, 248, 19, 3),
          currentIndex: currentIndex,
          onTap: (newIndex) {
            setState(() {
              currentIndex = newIndex;

              Colors.red;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: currentIndex == 0 ? 30 : 20,
              ),
              label: 'Ulubione restauracje',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                size: currentIndex == 1 ? 30 : 20,
              ),
              label: 'Dodaj',
            ),
          ],
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
