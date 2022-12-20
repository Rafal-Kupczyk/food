// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:food/tab_bar/ingredients_page.dart';
import 'package:food/tab_bar/recipes_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            bottom: const TabBar(
              labelColor: Color.fromARGB(255, 255, 7, 7),
              unselectedLabelColor: Colors.white,
              unselectedLabelStyle: TextStyle(fontSize: 14),
              labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  child: Text(
                    'Przepisy',
                  ),
                ),
                Tab(child: Text('Skladniki')),
              ],
            ),
            title: const Text(''),
            backgroundColor: Color.fromARGB(255, 44, 213, 255),
          ),
          body: const TabBarView(
            children: [
              RecipesPage(),
              IngredientsPage(),
            ],
          ),
        ),
      ),
    );
  }
}
