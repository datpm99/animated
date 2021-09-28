import 'package:flutter/material.dart';

class AniTranPosition extends StatefulWidget {
  const AniTranPosition({Key? key}) : super(key: key);

  @override
  _AniTranPositionState createState() => _AniTranPositionState();
}

class _AniTranPositionState extends State<AniTranPosition>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;
  final RelativeRectTween rectTween = RelativeRectTween(
    begin: RelativeRect.fromSize(
        const Rect.fromLTWH(0, 0, 100, 100), Size(300, 300)),
    end: RelativeRect.fromSize(
        Rect.fromLTWH(100, 100, 200, 200), Size(300, 300)),
  );

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);
    animation = CurvedAnimation(
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
      appBar: AppBar(title: const Text('Transition Position')),
      body: Stack(
        children: <Widget>[
          PositionedTransition(
            rect: rectTween.animate(animation),
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: FlutterLogo(),
            ),
          ),
        ],
      ),
    );
  }
}
