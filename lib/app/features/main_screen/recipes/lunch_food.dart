import 'package:flutter/material.dart';
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
        children:  [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const SpagettiPage(),),);
            },
            child: const RecipeCard(
              title: 'Spagetti',
              rating: '4.7',
              cookTime: '40 min',
              thumbnailUrl:
                  'https://najsmaczniejsze.pl/wp-content/uploads/2009/04/spagetti-po-bolonsku.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
