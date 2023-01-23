import 'package:flutter/material.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/fast_food/hamburger_page_content/hamburger_page.dart';

class TextButtonHamburger extends StatelessWidget {
  const TextButtonHamburger({
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
            .push(MaterialPageRoute(builder: (_) => const HamburgerPage()));
      },
      child: const Text('Hamburger :)'),
    );
  }
}
