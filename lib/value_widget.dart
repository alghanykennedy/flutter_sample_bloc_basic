import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample_bloc_basic/counter_bloc.dart';

class ValueWidget extends StatelessWidget {
  ValueWidget({super.key});

  final counterBloc = CounterBloc();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, int>(builder: (context, state) {
      return Text(
        state.toString(),
        style: const TextStyle(fontSize: 28),
      );
    });
  }
}
