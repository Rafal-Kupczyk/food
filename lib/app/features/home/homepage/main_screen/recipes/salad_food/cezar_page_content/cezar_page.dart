
import 'package:flutter/material.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/salad_food/cezar_page_content/cezar_others.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/salad_food/cezar_page_content/cezar_prepairs.dart';



import 'package:food/app/features/home/random/widgets/app_bar_color.dart';

import 'cezar_ingredienst.dart';

class CezarPage extends StatefulWidget {
  const CezarPage({super.key});

  @override
  State<CezarPage> createState() => _CezarPageState();
}

class _CezarPageState extends State<CezarPage> {
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
                Text('Sałatka Cezar'),
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
                CezarPrepair(),
                CezarIngredients(),
                CezarOthers()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
