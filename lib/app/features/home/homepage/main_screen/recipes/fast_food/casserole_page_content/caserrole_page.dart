

import 'package:flutter/material.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/fast_food/casserole_page_content/casserole_ingredients.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/fast_food/casserole_page_content/casserole_others.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/fast_food/casserole_page_content/casserole_prepair.dart';


import 'package:food/app/features/home/random/widgets/app_bar_color.dart';

class CasserolePage extends StatefulWidget {
  const CasserolePage({super.key});

  @override
  State<CasserolePage> createState() => _CasserolePageState();
}

class _CasserolePageState extends State<CasserolePage> {
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
                Text('Zapiekanka'),
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
                CasserolePrepair(),
                CasseroleIngredients(),
                CasseroleOthers()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
