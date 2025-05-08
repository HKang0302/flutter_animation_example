import 'package:flutter/material.dart';
import 'package:flutter_deep_dive_example/animation_examples/animated_align_example.dart';
import 'package:flutter_deep_dive_example/animation_examples/animated_container_example.dart';
import 'package:flutter_deep_dive_example/animation_examples/animated_opacity_example.dart';
import 'package:flutter_deep_dive_example/animation_examples/animated_positioned_example.dart';
import 'package:flutter_deep_dive_example/animation_examples/explict_animation_example.dart';
import 'package:flutter_deep_dive_example/animation_examples/hero_example.dart';

/* Animation Examples */
class AnimationHomePage extends StatelessWidget {
  const AnimationHomePage({super.key});

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
          ExplictAnimationExample(),
        ],
      ),
    );
  }
}
