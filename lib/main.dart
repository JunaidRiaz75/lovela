import 'package:flutter/material.dart';
import 'package:lovela/birthday.dart';
import 'package:lovela/forgotpin.dart';
import 'package:lovela/hithere.dart';
import 'package:lovela/hometown.dart';
import 'package:lovela/identity.dart';
import 'package:lovela/info.dart';
import 'package:lovela/newscr1.dart';
import 'package:lovela/notification.dart';
import 'package:lovela/screen1.dart';
import 'package:lovela/screen2.dart';
import 'package:lovela/screen6.dart';
import 'package:lovela/signin.dart';
import 'package:lovela/signup.dart';
import 'package:lovela/verification.dart';

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
