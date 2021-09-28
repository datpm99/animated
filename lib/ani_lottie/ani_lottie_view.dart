import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

//https://lottiefiles.com/75406-looped-404-error-animation

class AniLottieView extends StatefulWidget {
  const AniLottieView({Key? key}) : super(key: key);

  @override
  _AniLottieViewState createState() => _AniLottieViewState();
}

class _AniLottieViewState extends State<AniLottieView>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

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
      appBar: AppBar(title: const Text('Animated Lottie')),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 50),
        physics: const BouncingScrollPhysics(),
        children: [
          Lottie.asset('assets/jsons/75406-looped-404-error-animation.json'),
          const Divider(height: 1, color: Colors.grey),
          Lottie.asset(
            'assets/jsons/73681-like-animation.json',
            controller: controller,
            width: 100,
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.forward();
                },
                child: Text('Play'),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.reverse();
                },
                child: Text('Pause'),
              ),
            ],
          ),
          const Divider(height: 1, color: Colors.grey),
          //Some Animated popular.
          itemAni('assets/jsons/66714-lock.json'),
          itemAni('assets/jsons/66720-green-check.json'),
          itemAni('assets/jsons/65179-confetti-trophy.json'),
          itemAni('assets/jsons/29421-like-animation.json'),
          itemAni('assets/jsons/17297-fireworks.json'),
          itemAni('assets/jsons/14595-thumbs-up.json'),
        ],
      ),
    );
  }

  Widget itemAni(String json) {
    return Column(
      children: [
        Lottie.asset(json, width: 200, height: 200),
        const Divider(height: 1, color: Colors.grey),
      ],
    );
  }
}
