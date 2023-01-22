import 'package:flutter/material.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/lunch_food/fish_page_content/fish_page.dart';



class TextButtonRyba extends StatelessWidget {
  const TextButtonRyba({
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
            .push(MaterialPageRoute(builder: (_) => const FishPage()));
      },
      child: const Text('Ryba :)'),
    );
  }
}
