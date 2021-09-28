import 'package:flutter/material.dart';

class AniTranSlide extends StatefulWidget {
  const AniTranSlide({Key? key}) : super(key: key);

  @override
  _AniTranSlideState createState() => _AniTranSlideState();
}

class _AniTranSlideState extends State<AniTranSlide>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1.5, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transition Slide')),
      body: Center(
        child: SlideTransition(
          position: _offsetAnimation,
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: FlutterLogo(size: 150),
          ),
        ),
      ),
    );
  }
}
