

import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

import 'addProduct.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode)
      exit(1);
  };
  runApp(CrudFirestore());
}
// void main(){
//   runApp(CrudFirestore());
// }

class CrudFirestore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName:(ctx) =>HomePage(),
        AddUser.routeName:(ctx) =>AddUser(),
      },
    );
  }
}