import 'package:flutter/material.dart';
import 'dart:math' as math;

class AniBaseBuilder extends StatefulWidget {
  const AniBaseBuilder({Key? key}) : super(key: key);

  @override
  _AniBaseBuilderState createState() => _AniBaseBuilderState();
}

class _AniBaseBuilderState extends State<AniBaseBuilder>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5))
          ..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Builder'),),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Center(
            child: AnimatedBuilder(
              animation: controller,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.lightBlueAccent,
                alignment: Alignment.center,
                child: const Text('Hello World!'),
              ),
              builder: (context, child) {
                return Transform.rotate(
                  angle: controller.value * 2.0 * math.pi,
                  child: child,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
