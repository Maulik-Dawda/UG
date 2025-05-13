import 'package:flutter/material.dart';
import 'package:ug_intro/ug_intro.dart';
import 'package:ug_intro/ug_intro_1.dart';
import 'package:ug_intro/ug_login_with_phone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UgIntro1(),
    );
  }
}
