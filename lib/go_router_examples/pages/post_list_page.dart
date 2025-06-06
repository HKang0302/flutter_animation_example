import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PostListPage extends StatelessWidget {
  const PostListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PostListPage')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              context.go('/post/$index');
            },
            child: Container(
              color: Colors.amber,
              margin: EdgeInsets.all(20),
              child: Text('$index'),
            ),
          );
        },
      ),
    );
  }
}
