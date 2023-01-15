import 'package:flutter/material.dart';

import 'package:food/App/features/main_screen/recipes/lunch_food/cabbage_soup_page_content/cabbage_page.dart';

class TextButtonCabbage extends StatelessWidget {
  const TextButtonCabbage({
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
            .push(MaterialPageRoute(builder: (_) => const CabbagePage()));
      },
      child: const Text('Kapusniak :)'),
    );
  }
}
