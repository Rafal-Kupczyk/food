// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:food/App/features/main_screen/recipes/salad_food/Makaronowa_page_content/Makaronowa_others.dart';
import 'package:food/App/features/main_screen/recipes/salad_food/Makaronowa_page_content/Makaronowa_prepairs.dart';

import 'package:food/app/features/home/random/widgets/app_bar_color.dart';

import 'Makaronowa_ingredienst.dart';

class MakaronowaPage extends StatefulWidget {
  const MakaronowaPage({super.key});

  @override
  State<MakaronowaPage> createState() => _MakaronowaPageState();
}

class _MakaronowaPageState extends State<MakaronowaPage> {
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
                Text('Sałatka Makaronowa'),
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
                MakaronowaPrepair(),
                MakaronowaIngredients(),
                MakaronowaOthers()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
