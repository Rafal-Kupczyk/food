import 'package:flutter/material.dart';
import 'package:food/App/features/main_screen/recipes/lunch_food/Rolada_page_content/Rolada_page.dart';

class TextButtonRolada extends StatelessWidget {
  const TextButtonRolada({
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
            .push(MaterialPageRoute(builder: (_) => const RoladaPage()));
      },
      child: const Text('Rolada z kluskami :)'),
    );
  }
}
