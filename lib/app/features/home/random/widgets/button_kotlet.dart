import 'package:flutter/material.dart';
import 'package:food/App/features/main_screen/recipes/lunch_food/kotlet_page_content/kotlet_page.dart';

class TextButtonKotlet extends StatelessWidget {
  const TextButtonKotlet({
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
            .push(MaterialPageRoute(builder: (_) => const KotletPage()));
      },
      child: const Text('Kotlet z piersi :)'),
    );
  }
}
