import 'package:flutter/material.dart';

class AniBaseDecoBox extends StatefulWidget {
  const AniBaseDecoBox({Key? key}) : super(key: key);

  @override
  _AniBaseDecoBoxState createState() => _AniBaseDecoBoxState();
}

class _AniBaseDecoBoxState extends State<AniBaseDecoBox>
    with TickerProviderStateMixin {
  final DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: Colors.white,
      border: Border.all(style: BorderStyle.none),
      borderRadius: BorderRadius.circular(60),
      shape: BoxShape.rectangle,
      boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Color(0x66666666),
          blurRadius: 10,
          spreadRadius: 3,
          offset: Offset(0, 6),
        )
      ],
    ),
    end: BoxDecoration(
      color: Colors.white,
      border: Border.all(style: BorderStyle.none),
      borderRadius: BorderRadius.zero,
    ),
  );

  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated DecorationBox Transition')),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Center(
            child: DecoratedBoxTransition(
              position: DecorationPosition.background,
              decoration: decorationTween.animate(_controller),
              child: Container(
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(10),
                child: const FlutterLogo(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
