import 'package:flutter/material.dart';

import 'package:food/App/features/main_screen/recipes/fast_food/tortilla_page_content/tortilla_page.dart';

class TextButtonTortilla extends StatelessWidget {


  const TextButtonTortilla({Key? key, })
      : super(key: key);

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
            .push(MaterialPageRoute(builder: (_) => const TortillaPage()));
      },
      child: const Text('Tortilla :)'),
    );
  }
}
