// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FastFoodPage extends StatelessWidget {
  const FastFoodPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 70, 178, 255))),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(
                      'Przepis na tortille',
                      textAlign: TextAlign.center,
                    ),
                    insetPadding: EdgeInsets.zero,
                    content: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 16,
                            width: MediaQuery.of(context).size.width,
                          ),
                          Text(
                            'HelloHelloHelloHelloHelloHelloHelloHelloHHelloHelloHelloHelloHelloHelloello',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Description',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              content: Text(
                                'Cebula, Bekon, Ser Cebula, Bekon, Ser Cebula, Bekon, Ser',
                                textAlign: TextAlign.center,
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('OK'))
                              ],
                            ),
                          );
                        },
                        child: Text('Skladniki'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Tortilla'),
            ),
          ],
        ),
      ),
    );
  }
}
