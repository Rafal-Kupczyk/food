// ignore_for_file: unused_import, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food/app/home/random/draw_page.dart';

class RandomPage extends StatelessWidget {
  const RandomPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Napewno cos dobrego :)'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sprawdzmy co dzisiaj zjemy',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              child: Text('Sprawdz'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => DrawPage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
