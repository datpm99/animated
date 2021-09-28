import 'package:flutter/material.dart';

class AniBasePosition extends StatefulWidget {
  const AniBasePosition({Key? key}) : super(key: key);

  @override
  _AniBasePositionState createState() => _AniBasePositionState();
}

class _AniBasePositionState extends State<AniBasePosition> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Position')),
      body: SizedBox(
        width: 200,
        height: 350,
        child: Stack(
          children: [
            AnimatedPositioned(
              width: selected ? 200 : 50,
              height: selected ? 50 : 200,
              top: selected ? 50 : 150,
              duration: const Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selected = !selected;
                  });
                },
                child: Container(
                  color: Colors.blue,
                  child: const Center(child: Text('Tap me')),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
