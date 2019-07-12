import 'dart:async';

import 'package:flutter/foundation.dart';

class CounterBloc {
  int _counter = 0;

  CounterBloc() {
    _valueController.sink.add(_counter);
  }

  final _valueController = StreamController<int>();

  Stream<int> get value => _valueController.stream;

  void incrementCounter() async {
    await compute(fib, 34);
    _valueController.sink.add(++_counter);
  }

  void dispose() {
    _valueController.close();
  }

  static int fib(int n) {
    return n < 2 ? n : fib(n - 1) + fib(n - 2);
  }
}
