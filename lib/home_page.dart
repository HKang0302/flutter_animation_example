import 'package:flutter/material.dart';
import 'package:flutter_deep_dive_example/animation_examples/animated_align_example.dart';
import 'package:flutter_deep_dive_example/animation_examples/animated_container_example.dart';
import 'package:flutter_deep_dive_example/animation_examples/animated_opacity_example.dart';
import 'package:flutter_deep_dive_example/animation_examples/animated_positioned_example.dart';
import 'package:flutter_deep_dive_example/animation_examples/explict_animation_example.dart';
import 'package:flutter_deep_dive_example/animation_examples/hero_example.dart';

// /* Animation Examples */
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: ListView(
//         children: [
//           AnimatedAlignExample(),
//           AnimatedContainerExample(),
//           AnimatedOpacityExample(),
//           AnimatedPositionedExample(),
//           HeroExample(),
//           ExplictAnimationExample(),
//         ],
//       ),
//     );
//   }
// }

/* UI Examples */
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> items = List.generate(20, (index) => index);
  bool isFetching = false;

  void fetchMore() async {
    if (isFetching) {
      return;
    }
    isFetching = true;
    await Future.delayed(
      Duration(microseconds: 500),
    ); // 서버에서 데이터를 가져오기 위한 delay
    final newsList = List.generate(20, (index) => items.last + index);
    items.addAll(newsList);
    setState(() {});
    await Future.delayed(Duration(microseconds: 300));
    isFetching = false;
  }

  Future<void> onRefresh() async {
    if (isFetching) {
      return;
    }

    print('onRefresh');
    isFetching = true;
    await Future.delayed(Duration(microseconds: 500));
    items = List.generate(20, (index) => index);
    setState(() {});
    await Future.delayed(Duration(microseconds: 300));
    isFetching = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: NotificationListener(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            if (notification.metrics.pixels >=
                notification.metrics.maxScrollExtent) {
              print('fetching more');
              fetchMore();
            }
          }
          return false;
        },
        child: RefreshIndicator(
          onRefresh: onRefresh,
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.amber,
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                child: Text('${items[index]}'),
              );
            },
          ),
        ),
      ),
    );
  }
}
