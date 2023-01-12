import 'package:flutter/material.dart';
import 'package:food/App/features/main_screen/recipes/lunch_food/fish_page_content/fish_page.dart';
import 'package:food/App/features/main_screen/recipes/lunch_food/spagetti_page_content/spagetti_page.dart';
import 'package:food/App/features/main_screen/recipes/recipe_card/recipe_card.dart';

class LunchPage extends StatefulWidget {
  const LunchPage({super.key});

  @override
  State<LunchPage> createState() => _LunchPageState();
}

class _LunchPageState extends State<LunchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const SpagettiPage(),
                ),
              );
            },
            child: const RecipeCard(
              title: 'Spagetti',
              rating: '4.7',
              cookTime: '40 min',
              thumbnailUrl:
                  'https://najsmaczniejsze.pl/wp-content/uploads/2009/04/spagetti-po-bolonsku.jpg',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const FishPage(),
                ),
              );
            },
            child: const RecipeCard(
              title: 'Ryba',
              rating: '5.0',
              cookTime: '25 min',
              thumbnailUrl:
                  'https://bi.im-g.pl/im/6c/48/17/z24413804IER,Losos-z-piekarnika.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
