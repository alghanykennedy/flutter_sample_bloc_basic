import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample_bloc_basic/counter_bloc.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({super.key});

  final counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            context.read<CounterBloc>().add(DecrementCounterEvent());
          },
          child: const Text(
            '-',
            style: TextStyle(fontSize: 24),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            context.read<CounterBloc>().add(IncrementCounterEvent());
          },
          child: const Text('+', style: TextStyle(fontSize: 24)),
        ),
      ],
    );
  }
}
