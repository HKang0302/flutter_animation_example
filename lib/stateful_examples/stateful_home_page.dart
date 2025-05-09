import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_deep_dive_example/stateful_examples/fade_in_text.dart';

class StatefulExampleHomePage extends StatefulWidget {
  const StatefulExampleHomePage({super.key});

  @override
  State<StatefulExampleHomePage> createState() =>
      _StatefulExampleHomePageState();
}

class _StatefulExampleHomePageState extends State<StatefulExampleHomePage> {
  int randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Example')),
      body: Center(child: FadeInText(text: '$randomNumber')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            randomNumber = Random().nextInt(1000);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
