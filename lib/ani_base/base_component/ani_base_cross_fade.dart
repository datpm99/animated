import 'package:flutter/material.dart';

class AniBaseCrossFade extends StatefulWidget {
  const AniBaseCrossFade({Key? key}) : super(key: key);

  @override
  _AniBaseCrossFadeState createState() => _AniBaseCrossFadeState();
}

class _AniBaseCrossFadeState extends State<AniBaseCrossFade> {
  bool isFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated CrossFade')),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Center(
            child: AnimatedCrossFade(
              duration: const Duration(seconds: 1),
              firstChild: widgetOne(),
              secondChild: widgetTwo(),
              crossFadeState:
                  isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),
          )
        ],
      ),
    );
  }

  Widget widgetOne() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFirst = false;
        });
      },
      child: const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100),
    );
  }

  Widget widgetTwo() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFirst = true;
        });
      },
      child: const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100),
    );
  }
}
