import 'package:flutter/material.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/fast_food/tortilla_page_content/tortilla_ingredients.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/fast_food/tortilla_page_content/tortilla_others.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/fast_food/tortilla_page_content/tortilla_prepair.dart';

import 'package:food/app/features/home/random/widgets/app_bar_color.dart';

class TortillaPage extends StatefulWidget {
  const TortillaPage({super.key});

  @override
  State<TortillaPage> createState() => _TortillaPageState();
}

class _TortillaPageState extends State<TortillaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            flexibleSpace: const AppBarColorPage(),
            bottom: const TabBar(
              labelColor: Color.fromARGB(255, 0, 0, 0),
              unselectedLabelColor: Colors.white,
              unselectedLabelStyle: TextStyle(fontSize: 12),
              labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  child: Text('Przygotowanie'),
                ),
                Tab(
                  child: Text('Składniki'),
                ),
                Tab(
                  child: Text('Inne'),
                ),
              ],
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Tortilla'),
                SizedBox(width: 15),
              ],
            ),
          ),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromARGB(255, 234, 237, 240),
                  Color.fromARGB(255, 176, 255, 183),
                ],
                tileMode: TileMode.mirror,
              ),
            ),
            child: const TabBarView(
              children: [
                TortillaPrepair(),
                TortillaIngredients(),
                TortillaiOthers()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
