import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'home.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SnapSplash(),
      ),
    );

class SnapSplash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SnapSplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      backgroundColor: Color(0xFFfffc00),
      image: Image.asset("assets/snapchat.png"),
      photoSize: 200,
      loaderColor: Color(0xFFfffc00),
      navigateAfterSeconds: Home(),
    );
  }
}
