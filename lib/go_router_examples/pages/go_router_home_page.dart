import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRouterHomePage extends StatelessWidget {
  const GoRouterHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/post');
          },
          child: Text('Go to PostListPage'),
        ),
      ),
    );
  }
}
