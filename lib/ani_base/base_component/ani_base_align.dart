import 'package:flutter/material.dart';

class AniBaseAlign extends StatefulWidget {
  const AniBaseAlign({Key? key}) : super(key: key);

  @override
  _AniBaseAlignState createState() => _AniBaseAlignState();
}

class _AniBaseAlignState extends State<AniBaseAlign> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Align')),
      body: Column(
        children: [
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Center(
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: AnimatedAlign(
                  alignment:
                      selected ? Alignment.topRight : Alignment.bottomLeft,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  child: const FlutterLogo(size: 50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
