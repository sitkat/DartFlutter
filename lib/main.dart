import 'package:flutter/material.dart';
import 'package:practical_work_2/app_route.dart';
import 'package:practical_work_2/core/db/data_base_helper.dart';
import 'package:practical_work_2/pages/Authorization.dart';

Future<void> main() async {
  await DataBaseHelper.instance.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRoute route = AppRoute();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // onGenerateRoute: route.generateRoute,
      // initialRoute: namePageTest,
      home: Authorization(),
    );
  }
}
class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Text('1'),
        ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, namePageTest1);
        }, child: Text('Переход на экран 2'))
      ]),
    );
  }
}

class Test1 extends StatefulWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  State<Test1> createState() => _TestState1();
}

class _TestState1 extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Text('2'),
        ElevatedButton(onPressed: () {
          Navigator.pop(context);
        }, child: Text('Переход на экран 1'))
      ]),
    );
  }
}

