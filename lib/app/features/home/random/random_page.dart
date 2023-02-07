import 'package:flutter/material.dart';
import 'package:food/App/features/home/random/draw_page.dart';

class RandomPage extends StatelessWidget {
  const RandomPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
