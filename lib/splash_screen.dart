import 'dart:async';

import 'package:flutter/material.dart';
import 'package:holiday_lodges/main.dart';
import 'package:holiday_lodges/video_player_widget.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final asset = 'assets/video.mp4';

  // VideoPlayerController controller;
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.play());
    Timer(
      Duration(seconds: 7),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => MyHomePage(
                    title: 'TITLE',
                  ))),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayerWidget(controller: controller);
  }
}
//Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//               colors: [Colors.pink.shade300, Colors.orange.shade300],
//               end: Alignment.bottomCenter,
//               begin: Alignment.topCenter),
//         ),
//         child: Center(
//           child: Image.asset('assets/image.png')
//         ),
//       ),
//     )
