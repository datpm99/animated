import 'package:animated_sample/base/const.dart';
import 'package:flutter/material.dart';

class AniBaseSwitcher extends StatefulWidget {
  const AniBaseSwitcher({Key? key}) : super(key: key);

  @override
  _AniBaseSwitcherState createState() => _AniBaseSwitcherState();
}

class _AniBaseSwitcherState extends State<AniBaseSwitcher> {
  bool showCard = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Switcher')),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            child:
                showCard ? imgNetwork(Const.bgImg1) : imgNetwork(Const.bgImg2),
            transitionBuilder: (child, animation) {
              return FadeTransition(child: child, opacity: animation);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            showCard = !showCard;
          });
        },
        label: const Text('Flip card'),
      ),
    );
  }

  Widget imgNetwork(String img) {
    return SizedBox(
      key: Key(img),
      child: Image.network(img, height: 400, width: 640, fit: BoxFit.cover),
    );
  }
}
