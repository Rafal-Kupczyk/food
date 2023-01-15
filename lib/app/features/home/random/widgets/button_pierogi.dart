import 'package:flutter/material.dart';
import 'package:food/App/features/main_screen/recipes/lunch_food/Pierogi_page_content/Pierogi_page.dart';

class TextButtonPierogi extends StatelessWidget {
  const TextButtonPierogi({
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
            .push(MaterialPageRoute(builder: (_) => const PierogiPage()));
      },
      child: const Text('Pierogi ruskie :)'),
    );
  }
}
