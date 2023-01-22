import 'package:flutter/material.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/fast_food/hamburger_page_content/hamburger_ingredients.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/fast_food/hamburger_page_content/hamburger_others.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/fast_food/hamburger_page_content/hamburger_prepair.dart';


import 'package:food/app/features/home/random/widgets/app_bar_color.dart';

class HamburgerPage extends StatefulWidget {
  const HamburgerPage({super.key});

  @override
  State<HamburgerPage> createState() => _HamburgerPageState();
}

class _HamburgerPageState extends State<HamburgerPage> {
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
                Text('Hamburger'),
                SizedBox(width: 15),
              ],
            ),
          ),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFBDFF06), Colors.orange],
              ),
            ),
            child: const TabBarView(
              children: [
                HamburgerPrepair(),
                HamburgerIngredients(),
                HamburgerOthers()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
