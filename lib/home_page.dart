import 'package:flutter/material.dart';
import 'package:flutter_animation_example/animated_align_example.dart';
import 'package:flutter_animation_example/animated_container_example.dart';
import 'package:flutter_animation_example/animated_opacity_example.dart';
import 'package:flutter_animation_example/animated_positioned_example.dart';
import 'package:flutter_animation_example/hero_example.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          AnimatedAlignExample(),
          AnimatedContainerExample(),
          AnimatedOpacityExample(),
          AnimatedPositionedExample(),
          HeroExample(),
        ],
      ),
    );
  }
}
