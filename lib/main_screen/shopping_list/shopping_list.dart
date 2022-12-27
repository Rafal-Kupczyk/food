// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:food/firebase_options.dart';
import 'package:food/main_screen/shopping_list/category_widget.dart';

void main() async {
  WidgetsFlutterBinding();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: ShoppingListPage(),
    );
  }
}

class ShoppingListPage extends StatelessWidget {
  ShoppingListPage({
    Key? key,
  }) : super(key: key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Lista zakupow'),
        backgroundColor: Color.fromARGB(255, 44, 213, 255),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseFirestore.instance.collection('categories').add(
            {
              'title': controller.text,
            },
          );
          controller.clear();
        },
        child: const Icon(Icons.add),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('categories').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text('Wystapil nieoczekiwany problem');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text('Prosze czekac,trwa ladowanie danych');
          }

          final documents = snapshot.data!.docs;
          return ListView(
            children: [
              for (final document in documents) ...[
                Dismissible(
                  key: ValueKey(document.id),
                  onDismissed: (_) {
                    FirebaseFirestore.instance
                        .collection('categories')
                        .doc(document.id)
                        .delete();
                  },
                  child: CategoryWidget(
                    document['title'],
                  ),
                ),
              ],
              TextField(
                decoration: InputDecoration(hintText: 'Wpisz produkt '),
                controller: controller,
              ),
            ],
          );
        },
      ),
    );
  }
}
