// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CezarOthers extends StatelessWidget {
  const CezarOthers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: ListView(
              children: [
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.all(5.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Poziom trudnosci:',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Średni',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.all(5.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Ilość kalori:',
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Text(
                          '400 kcal',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.all(5.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Czas wykonania:',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '30 min',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
