import 'package:flutter/material.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/fast_food/nuggets_page_content/nuggets_page.dart';


class TextButtonNuggets extends StatelessWidget {
  const TextButtonNuggets({
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
            .push(MaterialPageRoute(builder: (_) => const NuggetsPage()));
      },
      child: const Text('Nuggetsy :)'),
    );
  }
}
