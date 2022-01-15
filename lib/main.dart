import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  final counter = RxNotifier<int>(0);

  _increment() => counter.value++;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Counter')),
        body: Center(
          child: RxBuilder(builder: (_) {
            return Text('${counter.value}');
          }),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one),
          onPressed: _increment,
        ),
      ),
    );
  }
}
