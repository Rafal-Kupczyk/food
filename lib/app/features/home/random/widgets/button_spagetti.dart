import 'package:flutter/material.dart';
import 'package:food/App/features/main_screen/recipes/lunch_food/Spagetti_page_content/Spagetti_page.dart';

class TextButtonSpagetti extends StatelessWidget {
  const TextButtonSpagetti({
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
            .push(MaterialPageRoute(builder: (_) => const SpagettiPage()));
      },
      child: const Text('Spagetti :)'),
    );
  }
}
