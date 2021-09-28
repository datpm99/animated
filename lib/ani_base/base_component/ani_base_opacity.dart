import 'package:flutter/material.dart';

class AniBaseOpacity extends StatefulWidget {
  const AniBaseOpacity({Key? key}) : super(key: key);

  @override
  _AniBaseOpacityState createState() => _AniBaseOpacityState();
}

class _AniBaseOpacityState extends State<AniBaseOpacity> {
  bool isOpacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Opacity')),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Center(
            child: AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: isOpacity ? 1 : 0,
              child: const FlutterLogo(size: 100),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isOpacity = !isOpacity;
              });
            },
            child: const Text('Fade logo'),
          ),
        ],
      ),
    );
  }
}
