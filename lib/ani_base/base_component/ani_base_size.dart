import 'package:flutter/material.dart';
class AniBaseSize extends StatefulWidget {
  const AniBaseSize({Key? key}) : super(key: key);

  @override
  _AniBaseSizeState createState() => _AniBaseSizeState();
}

class _AniBaseSizeState extends State<AniBaseSize> {
  double size = 100;
  bool large = false;

  void changeSize(){
    setState(() {
      large = !large;
      size = large ? 250 : 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Size')),
      body: Column(
        children: [
          const SizedBox(height: 50),
          GestureDetector(
            onTap: changeSize,
            child: AnimatedSize(
              curve: Curves.easeIn,
              duration: const Duration(seconds: 1),
              child: FlutterLogo(size: size),
            ),
          ),
        ],
      ),
    );
  }
}
