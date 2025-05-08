import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
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
        alignment: Alignment.center,
        child: AnimatedContainer(
          alignment: selected ? Alignment.topLeft : Alignment.bottomRight,
          height: selected ? 200 : 100,
          width: selected ? 200 : 100,
          decoration: BoxDecoration(
            color: selected ? Colors.amber : Colors.green,
            borderRadius: BorderRadius.circular(selected ? 20 : 0),
          ),
          curve: Curves.linear,
          duration: const Duration(seconds: 2),
          child: Container(width: 50, height: 50, color: Colors.red),
        ),
      ),
    );
  }
}
