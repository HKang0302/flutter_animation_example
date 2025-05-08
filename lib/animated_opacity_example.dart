import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        height: 300,
        width: double.infinity,
        color: Colors.green,
        alignment: Alignment.center,
        child: AnimatedOpacity(
          opacity: selected ? 0.3 : 1,
          curve: Curves.linear,
          duration: const Duration(seconds: 2),
          child: Container(width: 50, height: 50, color: Colors.red),
        ),
      ),
    );
  }
}
