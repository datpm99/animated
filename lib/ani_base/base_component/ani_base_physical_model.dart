import 'package:flutter/material.dart';

class AniBasePhysicalModel extends StatefulWidget {
  const AniBasePhysicalModel({Key? key}) : super(key: key);

  @override
  _AniBasePhysicalModelState createState() => _AniBasePhysicalModelState();
}

class _AniBasePhysicalModelState extends State<AniBasePhysicalModel> {
  bool _first = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated PhysicalModel')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(),
          AnimatedPhysicalModel(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            elevation: _first ? 0 : 6.0,
            shape: BoxShape.rectangle,
            shadowColor: Colors.black,
            color: Colors.white,
            borderRadius: _first
                ? const BorderRadius.all(Radius.circular(0))
                : const BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 120.0,
              width: 120.0,
              color: Colors.blue[50],
              child: const FlutterLogo(size: 60),
            ),
          ),
          const SizedBox(height: 20),
          RaisedButton(
            child: const Text('Click Me!'),
            onPressed: () {
              setState(() {
                _first = !_first;
              });
            },
          ),
        ],
      ),
    );
  }
}
