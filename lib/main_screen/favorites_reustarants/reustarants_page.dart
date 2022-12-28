// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ReustarantsPage extends StatefulWidget {
  const ReustarantsPage({super.key});

  @override
  State<ReustarantsPage> createState() => _ReustarantsPageState();
}

class _ReustarantsPageState extends State<ReustarantsPage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance
          .collection('reustarants')
          .orderBy('rating', descending: true)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Something wrong'));
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: Text('Trwa ladowanie danych'));
        }

        final documents = snapshot.data!.docs;

        return ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            for (final document in documents) ...[
              Dismissible(
                key: ValueKey(document.id),
                onDismissed: (_) {
                  FirebaseFirestore.instance
                      .collection('reustarants')
                      .doc(document.id)
                      .delete();
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
    );
  }
}
