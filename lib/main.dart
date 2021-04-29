import 'package:flutter/material.dart';
import 'package:guddi/screens/home/homeScreen.dart';

import 'screens/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: background,
        primaryColor: primary,
      ),
      home: HomeScreen(),
    );
  }
}
