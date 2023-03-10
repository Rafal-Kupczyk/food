import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/App/features/home/homepage/main_screen/shopping_list/category_widget.dart';
import 'package:food/App/features/home/homepage/main_screen/shopping_list/cubit/shopping_list_cubit.dart';
import 'package:food/app/features/home/random/widgets/app_bar_color.dart';

import 'package:food/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class ShoppingListPage extends StatefulWidget {
  const ShoppingListPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ShoppingListPage> createState() => _ShoppingListPageState();
}

class _ShoppingListPageState extends State<ShoppingListPage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShoppingListCubit()..start(),
      child: BlocBuilder<ShoppingListCubit, ShoppingListState>(
        builder: (context, state) {
          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromARGB(255, 234, 237, 240),
                  Color.fromARGB(255, 176, 255, 183),
                ],
                tileMode: TileMode.mirror,
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                centerTitle: true,
                title: const Text('Lista zakupow'),
                flexibleSpace: const AppBarColorPage(),
              ),
              floatingActionButton: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    stops: [
                      0.3,
                      1.2,
                    ],
                    colors: [
                      Color.fromARGB(255, 8, 240, 248),
                      Color.fromARGB(223, 12, 68, 222)
                    ],
                  ),
                ),
                child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(0, 255, 23, 23),
                  elevation: 0,
                  onPressed: () {
                    context
                        .read<ShoppingListCubit>()
                        .getdocuments(controller.text);
                    controller.clear();
                  },
                  child: const Icon(Icons.add),
                ),
              ),
              body: BlocBuilder<ShoppingListCubit, ShoppingListState>(
                  builder: (context, state) {
                final shopingModels = state.documents;

                return ListView(
                  children: [
                    for (final shopingModel in shopingModels) ...[
                      Dismissible(
                        key: ValueKey(shopingModel.id),
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
                              .deletedocuments(shopingModel.id);
                        },
                        child: CategoryWidget(shopingModel.title),
                      ),
                    ],
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: 'Wpisz produkt ',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 3, 255, 66),
                              width: 1.0,
                            ),
                          ),
                        ),
                        controller: controller,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Center(
                      child: Text(
                        "Aby usun??c przeci??gnij w lewo",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    )
                  ],
                );
              }),
            ),
          );
        },
      ),
    );
  }
}
