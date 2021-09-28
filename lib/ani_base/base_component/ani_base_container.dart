import 'package:flutter/material.dart';

class AniBaseContainer extends StatefulWidget {
  const AniBaseContainer({Key? key}) : super(key: key);

  @override
  _AniBaseContainerState createState() => _AniBaseContainerState();
}

class _AniBaseContainerState extends State<AniBaseContainer> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Container')),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: AnimatedContainer(
                width: selected ? 200 : 100,
                height: selected ? 100 : 200,
                color: selected ? Colors.redAccent : Colors.greenAccent,
                alignment:
                    selected ? Alignment.center : Alignment.topCenter,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: const FlutterLogo(size: 75),
              ),
            ),
          )
        ],
      ),
    );
  }
}
