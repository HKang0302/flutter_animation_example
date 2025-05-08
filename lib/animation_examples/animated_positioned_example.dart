import 'package:flutter/material.dart';

class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({super.key});

  @override
  State<AnimatedPositionedExample> createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
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
        color: Colors.red,
        alignment: Alignment.center,
        child: Stack(
          children: [
            AnimatedPositioned(
              top: selected ? 100 : 0,
              left: selected ? 100 : 0,
              child: Container(width: 50, height: 50, color: Colors.amber),
              duration: const Duration(seconds: 2),
            ),
          ],
        ),
      ),
    );
  }
}
