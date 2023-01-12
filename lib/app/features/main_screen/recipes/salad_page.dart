// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food/App/features/main_screen/recipes/recipe_card/recipe_card.dart';
import 'package:food/App/features/main_screen/recipes/salad_food/cezar_page_content/cezar_page.dart';
import 'package:food/App/features/main_screen/recipes/salad_food/jarzynowa_page_content/jarzynowa_page.dart';

class SaladPage extends StatelessWidget {
  const SaladPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const CezarPage(),
                ),
              );
            },
            child: const RecipeCard(
              title: 'Sałatka cezar',
              rating: '4.5',
              cookTime: '30 min',
              thumbnailUrl:
                  'https://cdn.aniagotuje.com/pictures/articles/2021/11/21731412-v-1500x1500.jpg',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const JarzynowaPage(),
                ),
              );
            },
            child: const RecipeCard(
              title: 'Sałatka jarzynowa',
              rating: '4.8',
              cookTime: '25 min',
              thumbnailUrl:
                  'https://www.kuchniadoroty.pl/wp-content/uploads/2018/02/salatka-1200x900.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
