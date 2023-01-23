import 'package:flutter/material.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/lunch_food/spagetti_page_content/spagetti_page.dart';

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
