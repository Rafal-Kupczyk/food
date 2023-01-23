

import 'package:flutter/material.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/lunch_food/bogracz_page_content/bogracz_ingredienst.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/lunch_food/bogracz_page_content/bogracz_others.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/lunch_food/bogracz_page_content/bogracz_prepairs.dart';


import 'package:food/app/features/home/random/widgets/app_bar_color.dart';

class BograczPage extends StatefulWidget {
  const BograczPage({super.key});

  @override
  State<BograczPage> createState() => _BograczPageState();
}

class _BograczPageState extends State<BograczPage> {
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
                Text('Bogracz'),
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
                BograczPrepair(),
                BograczIngredients(),
                BograczOthers()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
