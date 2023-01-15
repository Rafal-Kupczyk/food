import 'package:flutter/material.dart';

import 'package:food/App/features/main_screen/recipes/lunch_food/bigos_page_content/bigos_page.dart';

class TextButtonBigos extends StatelessWidget {
  const TextButtonBigos({
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
            .push(MaterialPageRoute(builder: (_) => const BigosPage()));
      },
      child: const Text('Bigos :)'),
    );
  }
}
