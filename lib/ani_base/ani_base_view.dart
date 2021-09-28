import 'package:animated_sample/base/links.dart';
import 'package:flutter/material.dart';

class AniBaseView extends StatefulWidget {
  const AniBaseView({Key? key}) : super(key: key);

  @override
  State<AniBaseView> createState() => _AniBaseViewState();
}

class _AniBaseViewState extends State<AniBaseView> {
  late Links link;

  @override
  void initState() {
    super.initState();
    link = Links(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Base')),
      body: ListView(
        padding: const EdgeInsets.all(15),
        physics: const BouncingScrollPhysics(),
        children: [
          btnLinkAni(link.onAniBaseAlign, 'Align'),
          btnLinkAni(link.onAniBaseBuilder, 'Builder'),
          btnLinkAni(link.onAniBaseContainer, 'Container'),
          btnLinkAni(link.onAniBaseCrossFade, 'CrossFade'),
          btnLinkAni(link.onAniBaseOpacity, 'Opacity'),
          btnLinkAni(link.onAniBasePosition, 'Position'),
          btnLinkAni(link.onAniBaseSize, 'Size'),
          btnLinkAni(link.onAniBaseDecoBox, 'DecoratedBox Transition'),
          btnLinkAni(link.onAniBaseSwitcher, 'Switcher'),
          btnLinkAni(link.onAniBaseIcon, 'Icon'),
          btnLinkAni(link.onAniBasePhysical, 'PhysicalModel'),
          btnLinkAni(link.onAniBaseList, 'List'),
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
