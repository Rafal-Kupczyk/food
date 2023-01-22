import 'package:flutter/material.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/lunch_food/bogracz_page_content/bogracz_page.dart';

class TextButtonBogracz extends StatelessWidget {
  const TextButtonBogracz({
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
            .push(MaterialPageRoute(builder: (_) => const BograczPage()));
      },
      child: const Text('Bogracz :)'),
    );
  }
}
