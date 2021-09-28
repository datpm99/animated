import 'package:dough/dough.dart';
import 'package:flutter/material.dart';

class AniDoughView extends StatefulWidget {
  const AniDoughView({Key? key}) : super(key: key);

  @override
  _AniDoughViewState createState() => _AniDoughViewState();
}

class _AniDoughViewState extends State<AniDoughView> {
  @override
  Widget build(BuildContext context) {

    final myDraggableChild = Container(
      color: Colors.blue,
      width: 100,
      height: 100,
      child: Center(
        child: Text(
          'Draggable',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );


    final myFeedbackWidget = Container(
      color: Colors.green,
      width: 100,
      height: 100,
      child: Center(
        child: Text(
          'Squishy feedback',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );


    final myDraggableDough = DoughRecipe(
      data: DoughRecipeData(
        adhesion: 4,
        viscosity: 500,
        draggablePrefs: DraggableDoughPrefs(
          breakDistance: 80,
          useHapticsOnBreak: true,
        ),
      ),
      child: DraggableDough<String>(
        data: 'My data!',
        child: myDraggableChild,
        feedback: myFeedbackWidget,
        longPress: false,
      ),
    );

    final myDragTarget = DragTarget<String>(
      builder: (context, candidateData, rejectedData) {
        return Container(
          height: 100,
          width: 100,
          color: candidateData.length > 0 ? Colors.lightGreen : Colors.grey,
          child: Center(
            child: Text(
              'Drag target',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        );
      },
      onWillAccept: (value) => value == 'My data!',
      onAccept: (value) {
        print('the value "$value" was accepted!');
      },
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Animated Dough')),
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: const [
      //     Center(
      //       child: PressableDough(
      //         child: Icon(Icons.ac_unit, size: 50, color: Colors.blue),
      //       ),
      //     ),
      //
      //   ],
      // ),
      body: Stack(
        children: [
          Positioned(
            left: 50,
            top: 50,
            child: myDraggableDough,
          ),
          Positioned(
            right: 50,
            bottom: 50,
            child: myDragTarget,
          ),
        ],
      ),
    );
  }
}
