import 'package:flutter/material.dart';

class AniTranScale extends StatefulWidget {
  const AniTranScale({Key? key}) : super(key: key);

  @override
  _AniTranScaleState createState() => _AniTranScaleState();
}

class _AniTranScaleState extends State<AniTranScale>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transition Scale')),
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: FlutterLogo(size: 150),
          ),
        ),
      ),
    );
  }
}
