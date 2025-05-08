import 'package:flutter/material.dart';
import 'package:flutter_deep_dive_example/animation_examples/animation_home_page.dart';
import 'package:flutter_deep_dive_example/go_router_examples/pages/go_router_home_page.dart';
import 'package:flutter_deep_dive_example/go_router_examples/router.dart';
import 'package:flutter_deep_dive_example/ux_examples/ux_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:
      // AnimationHomePage(),
      // UXHomePage(),
      MaterialApp.router(routerConfig: router),
    );
  }
}
