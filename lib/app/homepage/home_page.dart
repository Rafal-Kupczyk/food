// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food/tab_bar/favorites_reustarants_page.dart';
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
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Przepisy',
                  ),
                ),
                Tab(child: Text('Skladniki')),
                Tab(
                  child: Text(
                    'Ulubione reustaracje',
                  ),
                ),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              RecipesPage(),
              IngredientsPage(),
              FavoritesReustarantsPage(),
            ],
          ),
        ),
      ),
    );
  }
}
