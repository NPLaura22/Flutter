// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      body: Center( child: Column(children: [
        Text("Favorite"),
      ]),),
    );
  }
}