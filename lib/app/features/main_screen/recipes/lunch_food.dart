import 'package:flutter/material.dart';
import 'package:food/App/features/main_screen/recipes/recipe_card/recipe_card.dart';

class LunchPage extends StatefulWidget {
  const LunchPage({super.key});

  @override
  _LunchPageState createState() => _LunchPageState();
}

class _LunchPageState extends State<LunchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          RecipeCard(
            title: 'Tortilla',
            rating: '4.9',
            cookTime: '30 min',
            thumbnailUrl:
                'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/tortilla-z-kurczakiem.jpg',
          ),
        ],
      ),
    );
  }
}
