import 'package:flutter/material.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/fast_food/casserole_page_content/caserrole_page.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/fast_food/hamburger_page_content/hamburger_page.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/fast_food/hotdog_page_content/hotdog_page.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/fast_food/nuggets_page_content/nuggets_page.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/fast_food/pizza_page_content/pizza_page.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/fast_food/tortilla_page_content/tortilla_page.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/recipe_card/recipe_card.dart';


class FastFoodPage extends StatefulWidget {
  const FastFoodPage({super.key});

  @override
  State<FastFoodPage> createState() => _FastFoodPageState();
}

class _FastFoodPageState extends State<FastFoodPage> {
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
              cookTime: '60 min',
              thumbnailUrl:
                  'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/tortilla-z-kurczakiem.jpg',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => const HamburgerPage(),
              ));
            },
            child: const RecipeCard(
              title: 'Hamburger',
              rating: '3.8',
              cookTime: '20 min',
              thumbnailUrl:
                  'https://www.canalpluskuchnia.pl/wideo/43821-grzeszne-przyjemnosci/01-hamburger.jpg',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const HotDogPage(),
                ),
              );
            },
            child: const RecipeCard(
              title: 'Hot-Dog',
              rating: '3.5',
              cookTime: '15 min',
              thumbnailUrl:
                  'https://kuchnialidla.pl/img/PL/960x540/97a4fd20bc2a-aa294f1ad1b3-KW_33_stock_wege_hot_dog_1250x700.jpg',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const PizzaPage(),
                ),
              );
            },
            child: const RecipeCard(
              title: 'Pizza',
              rating: '5.0',
              cookTime: '80 min',
              thumbnailUrl:
                  'https://obiaddlataty.pl/wp-content/uploads/2020/02/domowa_pizza-scaled.jpg',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const CasserolePage(),
                ),
              );
            },
            child: const RecipeCard(
              title: 'Zapiekanka',
              rating: '3.5',
              cookTime: '20 min',
              thumbnailUrl:
                  'https://www.196flavors.com/wp-content/uploads/2022/08/Zapiekanka-FP.jpg',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const NuggetsPage(),
                ),
              );
            },
            child: const RecipeCard(
              title: 'Nuggetsy',
              rating: '3.5',
              cookTime: '30 min',
              thumbnailUrl:
                  'https://www.mojegotowanie.pl/media/cache/big/uploads/media/default/0001/92/nuggetsy.jpeg',
            ),
          ),
        ],
      ),
    );
  }
}
