import 'package:flutter/material.dart';
import 'package:food/App/features/home/homepage/main_screen/recipes/fast_food/casserole_page_content/caserrole_page.dart';


class TextButtonCasserole extends StatelessWidget {
  const TextButtonCasserole({
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
            .push(MaterialPageRoute(builder: (_) => const CasserolePage()));
      },
      child: const Text('Zapiekanka :)'),
    );
  }
}
