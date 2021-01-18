import 'package:flutter/material.dart';
import 'package:thebattle/pages/MyHomePage.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'THE BATTLE',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Knewave',
      ),
      home: MyHomePage(title: 'THE BATTLE'),
    );
  }
}