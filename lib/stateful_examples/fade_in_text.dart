import 'package:flutter/material.dart';

class FadeInText extends StatefulWidget {
  final String text;

  const FadeInText({super.key, required this.text});

  @override
  State<FadeInText> createState() => _FadeInTextState();
}

class _FadeInTextState extends State<FadeInText> with TickerProviderStateMixin {
  late AnimationController controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 1),
  );
  late Animation<double> animation = Tween<double>(
    begin: 0.0,
    end: 1.0,
  ).animate(controller);

  @override
  void initState() {
    super.initState();
    controller.forward();
  }

  @override
  void didUpdateWidget(FadeInText oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.text != widget.text) {
      controller.reset();
      controller.forward();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Opacity(
          opacity: animation.value,
          child: Text(widget.text, style: TextStyle(fontSize: 24)),
        );
      },
    );
  }
}
