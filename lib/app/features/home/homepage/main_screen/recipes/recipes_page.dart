
import 'package:flutter/material.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/fast_food.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/lunch_food.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/salad_page.dart';
import 'package:food/App/features/home/random/widgets/app_bar_color.dart';

class RecipesPage extends StatelessWidget {
  const RecipesPage({
    Key? key,
  }) : super(key: key);

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
              unselectedLabelStyle: TextStyle(fontSize: 14),
              labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  child: Text('Fastfood'),
                ),
                Tab(
                  child: Text('Obiad'),
                ),
                Tab(
                  child: Text('Sałatki'),
                ),
              ],
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Przepisy'),
                SizedBox(width: 15),
                Icon(Icons.restaurant_menu),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              FastFoodPage(),
              LunchPage(),
              SaladPage(),
            ],
          ),
        ),
      ),
    );
  }
}
