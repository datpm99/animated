import 'package:flutter/material.dart';

class AniFocusImgView extends StatefulWidget {
  const AniFocusImgView({Key? key}) : super(key: key);

  @override
  _AniFocusImgViewState createState() => _AniFocusImgViewState();
}

class _AniFocusImgViewState extends State<AniFocusImgView> {
  String imgNW =
      'https://cdn.pixabay.com/photo/2021/08/23/18/37/tea-6568547_960_720.jpg';
  String imgNW2 =
      'https://cdn.pixabay.com/photo/2021/07/24/15/47/venice-6489813_960_720.jpg';
  String imgNW3 =
      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Focus Image')),
      body: GridView.builder(
        itemCount: 24,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) {
          if (index < 8) return SmallCard(imageAssetName: imgNW);
          if (index >= 8 && index < 16) {
            return SmallCard(imageAssetName: imgNW2);
          }
          return SmallCard(imageAssetName: imgNW3);
        },
      ),
    );
  }
}

Route _createRoute(BuildContext parentContext, String image) {
  return PageRouteBuilder<void>(
    pageBuilder: (context, animation, secondaryAnimation) {
      return _SecondPage(image);
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var rectAnimation = _createTween(parentContext)
          .chain(CurveTween(curve: Curves.ease))
          .animate(animation);

      return Stack(
        children: [
          PositionedTransition(rect: rectAnimation, child: child),
        ],
      );
    },
  );
}

Tween<RelativeRect> _createTween(BuildContext context) {
  var windowSize = MediaQuery.of(context).size;
  var box = context.findRenderObject() as RenderBox;
  var rect = box.localToGlobal(Offset.zero) & box.size;
  var relativeRect = RelativeRect.fromSize(rect, windowSize);

  return RelativeRectTween(
    begin: relativeRect,
    end: RelativeRect.fill,
  );
}

class SmallCard extends StatelessWidget {
  final String imageAssetName;

  const SmallCard({required this.imageAssetName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push<void>(_createRoute(context, imageAssetName));
        },
        child: Image.network(imageAssetName, fit: BoxFit.cover),
      ),
    );
  }
}

class _SecondPage extends StatelessWidget {
  final String imageAssetName;

  const _SecondPage(this.imageAssetName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.network(imageAssetName, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
