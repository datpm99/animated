import 'package:flutter/material.dart';

class AniBaseIcon extends StatefulWidget {
  const AniBaseIcon({Key? key}) : super(key: key);

  @override
  _AniBaseIconState createState() => _AniBaseIconState();
}

class _AniBaseIconState extends State<AniBaseIcon>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool aniStart = true;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Icon')),
      body: Column(
        children: [
          AnimatedIcon(
            icon: AnimatedIcons.close_menu,
            progress: controller,
            size: 100,
            color: Colors.red,
          ),
          AnimatedIcon(
            icon: AnimatedIcons.add_event,
            progress: controller,
            size: 100,
            color: Colors.red,
          ),
          AnimatedIcon(
            icon: AnimatedIcons.arrow_menu,
            progress: controller,
            size: 100,
            color: Colors.red,
          ),
          AnimatedIcon(
            icon: AnimatedIcons.ellipsis_search,
            progress: controller,
            size: 100,
            color: Colors.red,
          ),
          AnimatedIcon(
            icon: AnimatedIcons.view_list,
            progress: controller,
            size: 100,
            color: Colors.red,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            aniStart = !aniStart;
            aniStart ? controller.forward() : controller.reverse();
          });
        },
        icon: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          progress: controller,
        ),
        label: Text(aniStart ? "Play" : "Pause"),
      ),
    );
  }
}
