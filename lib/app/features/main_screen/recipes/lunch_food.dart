import 'package:flutter/material.dart';
import 'package:food/App/features/main_screen/recipes/lunch_food/bigos_page_content/bigos_page.dart';
import 'package:food/App/features/main_screen/recipes/lunch_food/bogracz_page_content/bogracz_page.dart';
import 'package:food/App/features/main_screen/recipes/lunch_food/cabbage_soup_page_content/cabbage_page.dart';
import 'package:food/App/features/main_screen/recipes/lunch_food/fish_page_content/fish_page.dart';
import 'package:food/App/features/main_screen/recipes/lunch_food/kotlet_page_content/kotlet_page.dart';
import 'package:food/App/features/main_screen/recipes/lunch_food/pancakes_page_content/pancakes_page.dart';
import 'package:food/App/features/main_screen/recipes/lunch_food/pierogi_page_content/pierogi_page.dart';
import 'package:food/App/features/main_screen/recipes/lunch_food/rolada_page_content/rolada_page.dart';
import 'package:food/App/features/main_screen/recipes/lunch_food/schabowy_page_content/schabowy_page.dart';
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
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const SchabowyPage(),
                ),
              );
            },
            child: const RecipeCard(
              title: 'Schabowy',
              rating: '4.7',
              cookTime: '30 min',
              thumbnailUrl:
                  'https://staticsmaker.iplsc.com/smaker_prod_2019_05_29/710772584c50e61e096e61deee7b0d4d-lg.jpg',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const KotletPage(),
                ),
              );
            },
            child: const RecipeCard(
              title: 'Kotlet z piersi',
              rating: '4.7',
              cookTime: '30 min',
              thumbnailUrl:
                  'https://staticsmaker.iplsc.com/smaker_prod_2019_10_18/678894d8dc03e74681b3803659ea6126-lg.jpg',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const RoladaPage(),
                ),
              );
            },
            child: const RecipeCard(
              title: 'Rolada z kluskami',
              rating: '5.0',
              cookTime: '60 min',
              thumbnailUrl:
                  'https://www.przyslijprzepis.pl/media/cache/default_view/uploads/media/recipe/0001/44/34a8688b932b945a7e3d75d4d8bcca6ca794b5ba.jpeg',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const CabbagePage(),
                ),
              );
            },
            child: const RecipeCard(
              title: 'Kapuśniak',
              rating: '5.0',
              cookTime: '100 min',
              thumbnailUrl:
                  'https://bi.im-g.pl/im/9f/79/17/z24616607AMP,Kapusniak-z-kiszonej-kapusty-jest-jedna-z-bardziej.jpg',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const BigosPage(),
                ),
              );
            },
            child: const RecipeCard(
              title: 'Bigos',
              rating: '5.0',
              cookTime: '180 min',
              thumbnailUrl:
                  'http://foodo.pl/wp-content/uploads/2014/09/bigos.jpg',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const BograczPage(),
                ),
              );
            },
            child: const RecipeCard(
              title: 'Bogracz',
              rating: '5.0',
              cookTime: '180 min',
              thumbnailUrl:
                  'https://cdn.katalogsmakow.pl/2017/12/07/0x600/bogracz.666801.jpg',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const PancakesPage(),
                ),
              );
            },
            child: const RecipeCard(
              title: 'Naleśniki',
              rating: '4.5',
              cookTime: '30 min',
              thumbnailUrl:
                  'https://staticsmaker.iplsc.com/smaker_prod_2017_11_28/01ffff7a425adfb6b5d3e5cbb5fadc40-lg.jpg',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const PierogiPage(),
                ),
              );
            },
            child: const RecipeCard(
              title: 'Pierogi ruskie',
              rating: '4.0',
              cookTime: '60 min',
              thumbnailUrl: 'https://pliki.doradcasmaku.pl/pierogi-ruskie233-4',
            ),
          ),
        ],
      ),
    );
  }
}
