import 'package:animated_sample/base/links.dart';
import 'package:flutter/material.dart';

class AniTransitionView extends StatefulWidget {
  const AniTransitionView({Key? key}) : super(key: key);

  @override
  _AniTransitionViewState createState() => _AniTransitionViewState();
}

class _AniTransitionViewState extends State<AniTransitionView> {
  late Links link;

  @override
  void initState() {
    super.initState();
    link = Links(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Transition')),
      body: ListView(
        padding: const EdgeInsets.all(15),
        physics: const BouncingScrollPhysics(),
        children: [
          btnLinkAni(link.onAniTranFade, 'Fade'),
          btnLinkAni(link.onAniTranPosition, 'Position'),
          btnLinkAni(link.onAniTranRotation, 'Rotation'),
          btnLinkAni(link.onAniTranScale, 'Scale'),
          btnLinkAni(link.onAniTranSize, 'Size'),
          btnLinkAni(link.onAniTranSlide, 'Slide'),
        ],
      ),
    );
  }

  Widget btnLinkAni(VoidCallback onTap, String name) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(name, style: const TextStyle(fontSize: 15)),
      ),
    );
  }
}
