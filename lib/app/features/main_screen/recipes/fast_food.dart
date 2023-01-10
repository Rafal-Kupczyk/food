import 'package:flutter/material.dart';
import 'package:food/App/features/main_screen/recipes/fast_food/tortilla_page.dart';

import 'package:food/App/features/main_screen/recipes/recipe_card/recipe_card.dart';

class FastFoodPage extends StatefulWidget {
  const FastFoodPage({super.key});

  @override
  _LunchPageState createState() => _LunchPageState();
}

class _LunchPageState extends State<FastFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => const TortillaPage(),
              ));
            },
            child: const RecipeCard(
              title: 'Tortilla',
              rating: '4.5',
              cookTime: '30 min',
              thumbnailUrl:
                  'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/tortilla-z-kurczakiem.jpg',
            ),
          ),
          InkWell(
            onTap: () {},
            child: const RecipeCard(
              title: 'Tortilla',
              rating: '4.9',
              cookTime: '30 min',
              thumbnailUrl:
                  'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/tortilla-z-kurczakiem.jpg',
            ),
          ),
          InkWell(
            onTap: () {},
            child: const RecipeCard(
              title: 'Tortilla',
              rating: '4.9',
              cookTime: '30 min',
              thumbnailUrl:
                  'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/tortilla-z-kurczakiem.jpg',
            ),
          ),
          InkWell(
            onTap: () {},
            child: const RecipeCard(
              title: 'Tortilla',
              rating: '4.9',
              cookTime: '30 min',
              thumbnailUrl:
                  'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/tortilla-z-kurczakiem.jpg',
            ),
          ),
          InkWell(
            onTap: () {},
            child: const RecipeCard(
              title: 'Tortilla',
              rating: '4.9',
              cookTime: '30 min',
              thumbnailUrl:
                  'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/tortilla-z-kurczakiem.jpg',
            ),
          ),
          InkWell(
            onTap: () {},
            child: const RecipeCard(
              title: 'Tortilla',
              rating: '4.9',
              cookTime: '30 min',
              thumbnailUrl:
                  'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/tortilla-z-kurczakiem.jpg',
            ),
          ),
          InkWell(
            onTap: () {},
            child: const RecipeCard(
              title: 'Tortilla',
              rating: '4.9',
              cookTime: '30 min',
              thumbnailUrl:
                  'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/tortilla-z-kurczakiem.jpg',
            ),
          ),
          InkWell(
            onTap: () {},
            child: const RecipeCard(
              title: 'Tortilla',
              rating: '4.9',
              cookTime: '30 min',
              thumbnailUrl:
                  'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/tortilla-z-kurczakiem.jpg',
            ),
          ),
          InkWell(
            onTap: () {},
            child: const RecipeCard(
              title: 'Tortilla',
              rating: '4.9',
              cookTime: '30 min',
              thumbnailUrl:
                  'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/tortilla-z-kurczakiem.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
