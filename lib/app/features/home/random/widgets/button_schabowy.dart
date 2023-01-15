import 'package:flutter/material.dart';
import 'package:food/App/features/main_screen/recipes/lunch_food/Schabowy_page_content/Schabowy_page.dart';

class TextButtonSchabowy extends StatelessWidget {
  const TextButtonSchabowy({
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
            .push(MaterialPageRoute(builder: (_) => const SchabowyPage()));
      },
      child: const Text('Schabowy :)'),
    );
  }
}
