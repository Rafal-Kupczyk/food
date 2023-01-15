import 'package:flutter/material.dart';

import 'package:food/App/features/main_screen/recipes/lunch_food/pancakes_page_content/pancakes_page.dart';

class TextButtonPanCakes extends StatelessWidget {
  const TextButtonPanCakes({
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
            .push(MaterialPageRoute(builder: (_) => const PancakesPage()));
      },
      child: const Text('Naleśniki :)'),
    );
  }
}
