import 'package:flutter/material.dart';

class AniTranRotation extends StatefulWidget {
  const AniTranRotation({Key? key}) : super(key: key);

  @override
  _AniTranRotationState createState() => _AniTranRotationState();
}

class _AniTranRotationState extends State<AniTranRotation>
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
      curve: Curves.easeIn,
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
      appBar: AppBar(title: const Text('Transition Rotation')),
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: FlutterLogo(size: 150),
          ),
        ),
      ),
    );
  }
}
