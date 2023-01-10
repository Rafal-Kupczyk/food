// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:food/App/features/home/random/widgets/app_bar_color.dart';
import 'package:food/App/features/main_screen/favorites_reustarants/reustarants_page_content/reustarants_page.dart';
import 'package:food/firebase_options.dart';
import 'package:food/App/features/main_screen/favorites_reustarants/add_reustarants_page.dart';

void main() async {
  WidgetsFlutterBinding();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: FavoritesPage(),
    );
  }
}

class FavoritesPage extends StatefulWidget {
  FavoritesPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: AppBarColorPage(),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Text(
                        'Jeśli chcesz usunać pozycje, przeciągnij w którąs stronę.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
            icon: Icon(Icons.question_mark),
          )
        ],
      ),
      body: Builder(builder: (context) {
        if (currentIndex == 0) {
          return ReustarantsPage();
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
        backgroundColor: Color.fromARGB(255, 245, 157, 6),
        selectedItemColor: Color.fromARGB(255, 248, 19, 3),

        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;

            Colors.red;
          });
        },

        // ignore: prefer_const_literals_to_create_immutables
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

        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
