import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddReustarantsPage extends StatefulWidget {
  const AddReustarantsPage({super.key, required this.onSave});

  final Function onSave;

  @override
  State<AddReustarantsPage> createState() => _AddReustarantsPageState();
}

class _AddReustarantsPageState extends State<AddReustarantsPage> {
  var reustarantName = '';
  var adresName = '';
  var rating = 8.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Podaj nazwę restauracji',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 3, 255, 66),
                    width: 1.0,
                  ),
                ),
              ),
              onChanged: (newValue) {
                setState(() {
                  reustarantName = newValue;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Podaj adres restauracji',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 3, 255, 66),
                    width: 1.0,
                  ),
                ),
              ),
              onChanged: (newValue) {
                setState(() {
                  adresName = newValue;
                });
              },
            ),
            Slider(
              activeColor: const Color.fromARGB(255, 6, 187, 237),
              thumbColor: const Color.fromARGB(255, 3, 235, 11),
              onChanged: (newValue) {
                setState(() {
                  rating = newValue;
                });
              },
              value: rating,
              min: 0.0,
              max: 10.0,
              divisions: 20,
              label: rating.toString(),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: reustarantName.isEmpty || adresName.isEmpty
                  ? null
                  : () {
                      FirebaseFirestore.instance.collection('reustarants').add({
                        'name': reustarantName,
                        'adres': adresName,
                        'rating': rating,
                      });
                      widget.onSave();
                    },
              child: const Text('Dodaj'),
            ),
          ],
        ),
      ),
    );
  }
}
