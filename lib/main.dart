import 'package:flutter/material.dart';
import 'package:lovela/newscr1.dart';
import 'package:lovela/screen1.dart';
import 'package:lovela/screen2.dart';
import 'package:lovela/screen6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Newscr1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
