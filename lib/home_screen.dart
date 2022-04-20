import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final asset = 'assets/video.mp4';
  VideoPlayerController? controller;
  bool videoPlayed = false;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) {
        if (controller != null) {
          controller!.play();
        }
        ;
      });
    Timer(const Duration(seconds: 7), () {
      videoPlayed = true;
    });
  }

  @override
  void dispose() {
    if (controller != null) {
      controller!.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Scaffold(
          body: SafeArea(
            child: WebView(
              initialUrl: 'https://holidaylodges.app',
              javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
        ),
        videoPlayed?
        const SizedBox(): controller != null
                ? VideoPlayer(controller!)
                : const SizedBox(),
      ],
    );
  }
}

