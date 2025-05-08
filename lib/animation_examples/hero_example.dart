import 'package:flutter/material.dart';

class HeroExample extends StatelessWidget {
  const HeroExample({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return HeroPage();
            },
          ),
        );
      },
      child: Container(
        child: Row(
          children: [
            Hero(
              tag: 'sample-image',
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.network(
                  'https://picsum.photos/200/200',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10),
            Text('상품명'),
            SizedBox(width: 10),
            Text('200,000원'),
          ],
        ),
      ),
    );
  }
}

class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Hero(
            tag: 'sample-image',
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.network(
                'https://picsum.photos/200/200',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
