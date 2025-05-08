import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
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
        color: Colors.blue,

        child: AnimatedAlign(
          alignment: selected ? Alignment.topLeft : Alignment.bottomRight,
          curve: Curves.easeIn,
          duration: const Duration(seconds: 2),
          child: Container(width: 50, height: 50, color: Colors.red),
        ),
      ),
    );
  }
}
