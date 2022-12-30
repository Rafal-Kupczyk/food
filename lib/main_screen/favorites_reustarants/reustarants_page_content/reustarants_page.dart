// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/main_screen/favorites_reustarants/reustarants_page_content/cubit/reustarants_cubit.dart';

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

          final documents = state.documents;

          return ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              for (final document in documents) ...[
                Dismissible(
                  key: ValueKey(document.id),
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
                  confirmDismiss: (direction) async {
                    return direction == DismissDirection.endToStart;
                  },
                  onDismissed: (_) {
                    context
                        .read<ReustarantsPageCubit>()
                        .deletedocuments(document.id);
                  },
                  child: Container(
                    color: Colors.amber,
                    margin: EdgeInsets.all(5.0),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(document['name']),
                              Text(document['adres']),
                            ],
                          ),
                          Text(document['rating'].toString()),
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
