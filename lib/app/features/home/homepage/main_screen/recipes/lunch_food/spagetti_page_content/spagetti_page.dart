import 'package:flutter/material.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/lunch_food/spagetti_page_content/spagetti_ingredients.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/lunch_food/spagetti_page_content/spagetti_others.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/lunch_food/spagetti_page_content/spagetti_prepairs.dart';

import 'package:food/app/features/home/random/widgets/app_bar_color.dart';

class SpagettiPage extends StatefulWidget {
  const SpagettiPage({super.key});

  @override
  State<SpagettiPage> createState() => _SpagettiPageState();
}

class _SpagettiPageState extends State<SpagettiPage> {
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
                Text('Spagetti'),
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
                SpagettiPrepair(),
                SpagettiIngredients(),
                SpagettiOthers()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
