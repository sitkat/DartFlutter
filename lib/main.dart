import 'package:flutter/material.dart';
import 'package:practical_work_1/pages/page_four.dart';
import 'package:practical_work_1/pages/page_one.dart';
import 'package:practical_work_1/pages/page_three.dart';
import 'package:practical_work_1/pages/page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageFour(),
    );
  }
}