// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:food/features/app/home/random/widgets/app_bar_color.dart';
import 'package:food/features/main_screen/favorites_reustarants/favorites_reustarants_page.dart';
import 'package:food/features/main_screen/ingredients/ingredients_page.dart';
import 'package:food/features/main_screen/recipes_page.dart';
import 'package:food/features/main_screen/shopping_list/cubit/shopping_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    Color shadowColor = Color.fromARGB(255, 255, 182, 10);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(':)'),
          centerTitle: true,
          flexibleSpace: AppBarColorPage(),
        ),

        // ignore: prefer_const_literals_to_create_immutables
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 46, 255, 252),
                        Color.fromARGB(255, 3, 255, 83),
                      ],
                    ),
                  ),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(0, 232, 20, 20),
                      shadowColor: Color.fromARGB(255, 95, 195, 242),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color.fromARGB(255, 236, 168, 9),
                          width: 1.5,
                        ),
                      ),
                    ),
                    icon: Icon(
                      Icons.flatware,
                      color: Color.fromARGB(255, 27, 255, 7),
                    ),
                    onHover: (hovered) => setState(() {
                      isPressed = hovered;
                    }),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => RecipesPage(),
                        ),
                      );
                    },
                    label: Text(
                      'Przepisy',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        shadows: [
                          for (double i = 10; i < (isPressed ? 8 : 4); i++)
                            Shadow(
                              color: shadowColor,
                              blurRadius: 1 * i,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 300,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 46, 255, 252),
                        Color.fromARGB(255, 3, 255, 83),
                      ],
                    ),
                  ),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(0, 232, 20, 20),
                      shadowColor: Color.fromARGB(255, 95, 195, 242),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color.fromARGB(255, 236, 168, 9),
                          width: 1.5,
                        ),
                      ),
                    ),
                    icon: Icon(
                      Icons.local_dining,
                      color: Color.fromARGB(255, 252, 190, 4),
                    ),
                    onHover: (hovered) => setState(() {
                      isPressed = hovered;
                    }),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => IngredientsPage(),
                        ),
                      );
                    },
                    label: Text(
                      'Składniki',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        shadows: [
                          for (double i = 10; i < (isPressed ? 8 : 4); i++)
                            Shadow(
                              color: shadowColor,
                              blurRadius: 1 * i,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 300,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 46, 255, 252),
                        Color.fromARGB(255, 3, 255, 83),
                      ],
                    ),
                  ),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(0, 232, 20, 20),
                      shadowColor: Color.fromARGB(255, 95, 195, 242),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color.fromARGB(255, 236, 168, 9),
                          width: 1.5,
                        
                        ),
                      ),
                    ),
                    icon: Icon(
                      Icons.favorite,
                      color: Color.fromARGB(255, 239, 18, 2),
                    ),
                    onHover: (hovered) => setState(() {
                      isPressed = hovered;
                    }),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => FavoritesPage(),
                        ),
                      );
                    },
                    label: Text(
                      'Ulubione restauracje',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        shadows: [
                          for (double i = 10; i < (isPressed ? 8 : 4); i++)
                            Shadow(
                              color: shadowColor,
                              blurRadius: 1 * i,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 300,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 46, 255, 252),
                        Color.fromARGB(255, 3, 255, 83),
                      ],
                    ),
                  ),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(0, 232, 20, 20),
                      shadowColor: Color.fromARGB(255, 95, 195, 242),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color.fromARGB(255, 236, 168, 9),
                          width: 1.5,
                        ),
                      ),
                    ),
                    icon: Icon(
                      Icons.auto_stories,
                      color: Color.fromARGB(255, 248, 248, 1),
                    ),
                    onHover: (hovered) => setState(() {
                      isPressed = hovered;
                    }),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => ShoppingListPage(),
                        ),
                      );
                    },
                    label: Text(
                      'Lista zakupow',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        shadows: [
                          for (double i = 10; i < (isPressed ? 8 : 4); i++)
                            Shadow(
                              color: shadowColor,
                              blurRadius: 1 * i,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
