import 'package:blocproject/ui/screens/counter/bloc/counter_bloc.dart';
import 'package:blocproject/ui/screens/counter/bloc/counter_event.dart';
import 'package:blocproject/ui/screens/counter/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: BlocConsumer<CounterBloc, CounterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Bloc',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              centerTitle: true,
              elevation: 0.0,
            ),
            body: BlocBuilder<CounterBloc, CounterStates>(
              builder: (context, state) {
                return Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                        onPressed: () => CounterBloc.get(context).add(IncrementCounterValue()),
                        elevation: 0.1,
                        child: const Icon(Icons.add),
                      ),
                      Text(
                        CounterBloc.get(context).counter.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: () => CounterBloc.get(context).add(DecrementCounterValue()),
                        elevation: 0.1,
                        child: const Icon(Icons.remove),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
