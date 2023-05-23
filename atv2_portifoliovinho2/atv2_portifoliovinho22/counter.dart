//import 'package:atv2_portifolio/clas_counter.dart';
import 'package:atv2_portifoliovinho2/clas_counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Counter());
}

class Counter extends StatelessWidget {
  const Counter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const clas_counter(),
    );
  }
}