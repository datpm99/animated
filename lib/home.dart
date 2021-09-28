import 'package:flutter/material.dart';
import 'base/links.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Links link;

  @override
  void initState() {
    super.initState();
    link = Links(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Sample')),
      body: ListView(
        padding: const EdgeInsets.all(15),
        physics: const BouncingScrollPhysics(),
        children: [
          btnLinkAni(link.onAniBase, 'Base'),
          btnLinkAni(link.onAniTransition, 'Transition'),
          btnLinkAni(link.onAniDough, 'Dough'),
          btnLinkAni(link.onAniLoading, 'Loading'),
          btnLinkAni(link.onAniLottie, 'Lottie'),
          btnLinkAni(link.onAniFocusImg, 'Focus Image'),
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
