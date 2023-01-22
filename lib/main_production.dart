import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:food/App/app.dart';
import 'package:food/config.dart';

import 'firebase_options.dart';

void main() async {
  Config.appFlavor = Flavor.production;

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
