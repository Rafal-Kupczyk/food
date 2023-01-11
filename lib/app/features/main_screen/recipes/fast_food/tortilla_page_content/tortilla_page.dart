// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food/App/features/main_screen/recipes/fast_food/tortilla_page_content/tortilla_ingredients.dart';
import 'package:food/App/features/main_screen/recipes/fast_food/tortilla_page_content/tortilla_others.dart';
import 'package:food/App/features/main_screen/recipes/fast_food/tortilla_page_content/tortilla_prepair.dart';
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
            flexibleSpace: AppBarColorPage(),
            bottom: const TabBar(
              labelColor: Color.fromARGB(255, 0, 0, 0),
              unselectedLabelColor: Colors.white,
              unselectedLabelStyle: TextStyle(fontSize: 14),
              labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
                end: Alignment.bottomRight,
                colors: [Color(0xFFBDFF06), Colors.orange],
              ),
            ),
            child: TabBarView(
              children: const [
                TortillaiPrepair(),
                TortillaiIngredients(),
                TortillaiOthers()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*  return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFBDFF06), Colors.orange],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 1, vertical: 1),
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.6),
                            offset: const Offset(
                              0.0,
                              10.0,
                            )
                            blurRadius: 10.0,
                            spreadRadius: -6.0,
                          ),
                        ],
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/tortilla-z-kurczakiem.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
             
}*/
