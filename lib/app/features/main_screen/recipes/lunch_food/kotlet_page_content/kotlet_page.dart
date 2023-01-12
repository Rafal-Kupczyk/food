// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:food/App/features/main_screen/recipes/lunch_food/Kotlet_page_content/Kotlet_others.dart';

import 'package:food/App/features/main_screen/recipes/lunch_food/Kotlet_page_content/Kotlet_ingredienst.dart';
import 'package:food/App/features/main_screen/recipes/lunch_food/kotlet_page_content/kotlet_prepairs.dart';

import 'package:food/app/features/home/random/widgets/app_bar_color.dart';

class KotletPage extends StatefulWidget {
  const KotletPage({super.key});

  @override
  State<KotletPage> createState() => _KotletPageState();
}

class _KotletPageState extends State<KotletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            flexibleSpace: AppBarColorPage(),
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
                Text('Kotlet z piersi'),
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
            child: TabBarView(
              children: const [
                KotletPrepair(),
                KotletIngredients(),
                KotletOthers()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
