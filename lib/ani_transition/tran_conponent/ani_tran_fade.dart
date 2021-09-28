import 'package:flutter/material.dart';

class AniTranFade extends StatefulWidget {
  const AniTranFade({Key? key}) : super(key: key);

  @override
  _AniTranFadeState createState() => _AniTranFadeState();
}

class _AniTranFadeState extends State<AniTranFade>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transition Fade')),
      body: Center(
        child: Container(
          color: Colors.white,
          child: FadeTransition(
            opacity: animation,
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: FlutterLogo(size: 200),
            ),
          ),
        ),
      ),
    );
  }
}
