// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/app/home/random/widgets/app_bar_color.dart';
import 'package:food/firebase_options.dart';
import 'package:food/main_screen/shopping_list/category_widget.dart';
import 'package:food/main_screen/shopping_list/cubit/cubit/cubit/shopping_list_cubit.dart';

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
        flexibleSpace: AppBarColorPage(),
      ),
      floatingActionButton: BlocProvider(
        create: (context) => ShoppingListCubit(),
        child: BlocBuilder<ShoppingListCubit, ShoppingListState>(
          builder: (context, state) {
            return FloatingActionButton(
              onPressed: () {
                context.read<ShoppingListCubit>().getdocuments(controller.text);
                controller.clear();
              },
              child: const Icon(Icons.add),
            );
          },
        ),
      ),
      body: BlocProvider(
        create: (context) => ShoppingListCubit()..start(),
        child: BlocBuilder<ShoppingListCubit, ShoppingListState>(
          builder: (context, state) {
            {
              if (state.errorMessage.isNotEmpty) {
                return const Text('Wystapil nieoczekiwany problem');
              }

              if (state.isLoading == true) {
                return const Text('Prosze czekac,trwa ladowanie danych');
              }

              final documents = state.documents;

              return ListView(
                children: [
                  for (final document in documents) ...[
                    Dismissible(
                      key: ValueKey(document.id),
                      background: const DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 32.0),
                            child: Icon(
                              Icons.delete,
                            ),
                          ),
                        ),
                      ),
                      confirmDismiss: (direction) async {
                        return direction == DismissDirection.endToStart;
                      },
                      onDismissed: (_) {
                        context
                            .read<ShoppingListCubit>()
                            .deletedocuments(document.id);
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
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      "Aby usunąc przeciągnij w lewo",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
