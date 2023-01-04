// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/App/features/main_screen/favorites_reustarants/reustarants_page_content/cubit/reustarants_cubit.dart';

class ReustarantsPage extends StatefulWidget {
  const ReustarantsPage({super.key});

  @override
  State<ReustarantsPage> createState() => _ReustarantsPageState();
}

class _ReustarantsPageState extends State<ReustarantsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReustarantsPageCubit()..start(),
      child: BlocBuilder<ReustarantsPageCubit, ReustarantsPageState>(
        builder: (context, state) {
          if (state.errorMessage.isNotEmpty) {
            return Center(
              child: Text(
                'Something wrong: ${state.errorMessage}',
              ),
            );
          }
          if (state.isLoading == true) {
            return Center(child: CircularProgressIndicator());
          }

          final itemModels = state.documents;

          return ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              for (final itemModel in itemModels) ...[
                Dismissible(
                  key: ValueKey(itemModel.id),
                  background: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.red),
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
                  confirmDismiss: (direction) => showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Czy napewno chcesz usunąc?'),
                        content: Text('Pózniej nie można tego cofnąć.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: Text('TAK'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            },
                            child: Text('NIE'),
                          ),
                        ],
                      );
                    },
                  ),
                  onDismissed: (_) {
                    context
                        .read<ReustarantsPageCubit>()
                        .deletedocuments(itemModel.id);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: const [
                          Color.fromARGB(255, 6, 246, 242),
                          Color.fromARGB(255, 243, 224, 14),
                        ],
                      ),
                    ),
                    margin: EdgeInsets.all(5.0),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(itemModel.reustarantName),
                              Text(itemModel.adresName),
                            ],
                          ),
                          Text(itemModel.rating.toString()),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
