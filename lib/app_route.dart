import 'package:flutter/material.dart';
import 'package:practical_work_2/main.dart';

const String namePageTest = 'test';
const String namePageTest1 = 'test1';

class AppRoute {
  Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case namePageTest:
        {
          return MaterialPageRoute(builder: (context) => Test());
        }
      case namePageTest1:
        {
          return MaterialPageRoute(builder: (context) => Test1());
        }
    }
  }
}
