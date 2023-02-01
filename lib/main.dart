import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:food/app/app.dart';

import 'package:food/config.dart';
import 'firebase_options.dart';

void main() async {
  //configureDependencies();
  Config.appFlavor = Flavor.development;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
