import 'package:flutter/material.dart';
import 'package:food/App/features/main_screen/recipes/fast_food/pizza_page_content/pizza_page.dart';

class TextButtonPizza extends StatelessWidget {
  const TextButtonPizza({
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
            .push(MaterialPageRoute(builder: (_) => const PizzaPage()));
      },
      child: const Text('Pizza :)'),
    );
  }
}
