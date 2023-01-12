

import 'package:flutter/material.dart';
import 'package:food/App/features/home/random/draw_page.dart';
import 'package:food/App/features/home/random/widgets/app_bar_color.dart';

class RandomPage extends StatelessWidget {
  const RandomPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Napewno cos dobrego :)'),
        centerTitle: true,
        flexibleSpace: const AppBarColorPage(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sprawdzmy co dzisiaj zjemy',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.verified),
                label: const Text('Sprawdz'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const DrawPage(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
