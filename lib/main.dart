import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';


void main() {
  runApp(const MyApp());
}
// void main() => runApp(SplashScreenPage());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: ''),
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'assets/HolidayLodges_logo_sm.png'
          ),
          duration: 3000,
          nextScreen: const MyHomePage(title: ''),
          splashTransition: SplashTransition.rotationTransition,
          backgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: WebView(
        initialUrl: "https://holidaylodges.app",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
