import 'package:flutter/material.dart';
import 'package:food/App/features/main_screen/recipes/fast_food/HotDog_page_content/HotDog_page.dart';

class TextButtonHotDog extends StatelessWidget {
  const TextButtonHotDog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 30,
          fontStyle: FontStyle.italic,
        ),
      ),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => const HotDogPage()));
      },
      child: const Text('Hot-Dog :)'),
    );
  }
}
