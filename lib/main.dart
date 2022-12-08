import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practical_work_4_1/home/cubit/change_theme.dart';
import 'package:practical_work_4_1/home/cubit/counter_cubit.dart';
import 'package:practical_work_4_1/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => ChangeTheme()),
      ],
      child: BlocBuilder<ChangeTheme, ThemeData>(builder: (context, state) {
        return MaterialApp(
          theme: state,
          home: const HomePage(),
        );
      }),
    );
  }
}
