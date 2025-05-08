import 'package:flutter/material.dart';
import 'package:flutter_animation_example/animated_align_example.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [AnimatedAlignExample()]),
    );
  }
}
