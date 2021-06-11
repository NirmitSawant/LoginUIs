import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'home.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: InstagramSplash(),
      ),
    );

class InstagramSplash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<InstagramSplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      backgroundColor: Color(0xff1a1a1a),
      image: Image.asset("assets/instagram.jpg"),
      photoSize: 200,
      loaderColor: Color(0xff1a1a1a),
      navigateAfterSeconds: Home(),
    );
  }
}
