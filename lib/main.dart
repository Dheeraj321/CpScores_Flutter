import 'package:cp_scores/Handle.dart';
import 'package:cp_scores/HomePage.dart';
import 'package:flutter/material.dart';

import 'IntroPage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IntroPage(),
      ),
    );
  }
}