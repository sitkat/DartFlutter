import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practical_work_4_1/home/cubit/change_theme.dart';
import 'package:practical_work_4_1/home/cubit/counter_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Смена темы'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Center(
                    child: Text(
                  '$state',
                  style: Theme.of(context).textTheme.headline3,
                ));
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    child: const Text('+'),
                    onPressed: () {
                      final cubit = context.read<CounterCubit>();
                      if (ThemeData.light() == true) {
                        cubit.increment();
                      } else {
                        cubit.second_increment();
                      }
                    }),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    child: const Text('-'),
                    onPressed: () {
                      final cubit = context.read<CounterCubit>();
                      if (ThemeData.light() == true) {
                        cubit.decrement();
                      } else {
                        cubit.second_decrement();
                      }
                    }),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.change_circle),
        onPressed: () {
          final cubit2 = context.read<ChangeTheme>();
          cubit2.toggleTheme();
        },
      ),
    );
  }
}
