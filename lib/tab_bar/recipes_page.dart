// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RecipesPage extends StatelessWidget {
  const RecipesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (() {}), child: Text('Hamburger')),
                TextButton(onPressed: (() {}), child: Text('Tortilla')),
                TextButton(onPressed: (() {}), child: Text('Spagetti')),
                TextButton(onPressed: (() {}), child: Text('Ryba z frytkami')),
                TextButton(
                    onPressed: (() {}),
                    child: Text('Mieso w ciescie francuskim')),
                TextButton(onPressed: (() {}), child: Text('Kotlet z piersi')),
                TextButton(onPressed: (() {}), child: Text('Schabowy')),
                TextButton(onPressed: (() {}), child: Text('Pizza')),
                TextButton(
                    onPressed: (() {}), child: Text('Placki ziemniaczane')),
                TextButton(
                    onPressed: (() {}), child: Text('Placek po wiegiersku')),
                TextButton(onPressed: (() {}), child: Text('Devoile')),
                TextButton(onPressed: (() {}), child: Text('Stek')),
              ],
            ),
            SizedBox(
              width: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: (() {}), child: Text('Rolada z kluskami')),
                TextButton(onPressed: (() {}), child: Text('Bigos')),
                TextButton(onPressed: (() {}), child: Text('Kapuśniak')),
                TextButton(onPressed: (() {}), child: Text('Bogracz')),
                TextButton(onPressed: (() {}), child: Text('Risotto')),
                TextButton(onPressed: (() {}), child: Text('Nalesniki')),
                TextButton(onPressed: (() {}), child: Text('Pierogi')),
                TextButton(onPressed: (() {}), child: Text('Zapiekanka')),
                TextButton(onPressed: (() {}), child: Text('Racuchy')),
                TextButton(onPressed: (() {}), child: Text('Zupa')),
                TextButton(onPressed: (() {}), child: Text('Lasagne')),
                TextButton(onPressed: (() {}), child: Text('Sałatka cezar')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
