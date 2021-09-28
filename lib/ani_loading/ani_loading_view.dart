import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AniLoadingView extends StatefulWidget {
  const AniLoadingView({Key? key}) : super(key: key);

  @override
  _AniLoadingViewState createState() => _AniLoadingViewState();
}

class _AniLoadingViewState extends State<AniLoadingView> {
  void showLoadingData(Widget loading) {
    showDialog(
      context: context,
      builder: (context) => dialogLoading(loading),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated loading')),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => showLoadingData(loading1()),
              child: const Text('DoubleBounce'),
            ),
          ),
          ElevatedButton(
            onPressed: () => showLoadingData(loading2()),
            child: const Text('Wave'),
          ),
          ElevatedButton(
            onPressed: () => showLoadingData(loading3()),
            child: const Text('Pulse'),
          ),
          ElevatedButton(
            onPressed: () => showLoadingData(loading4()),
            child: const Text('CubeGrid'),
          ),
          ElevatedButton(
            onPressed: () => showLoadingData(loading5()),
            child: const Text('FadingCircle'),
          ),
          ElevatedButton(
            onPressed: () => showLoadingData(loading6()),
            child: const Text('FoldingCube'),
          ),
        ],
      ),
    );
  }

  Widget dialogLoading(Widget loading) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [loading],
      ),
    );
  }

  Widget loading1() {
    return const SpinKitDoubleBounce(color: Colors.white, size: 50);
  }

  Widget loading2() {
    return const SpinKitWave(color: Colors.white, size: 50);
  }

  Widget loading3() {
    return const SpinKitPulse(color: Colors.white, size: 50);
  }

  Widget loading4() {
    return const SpinKitCubeGrid(color: Colors.white, size: 50);
  }

  Widget loading5() {
    return const SpinKitFadingCircle(color: Colors.white, size: 50);
  }

  Widget loading6() {
    return const SpinKitFoldingCube(color: Colors.white, size: 50);
  }
}
