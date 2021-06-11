import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'home.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SpotifySplash(),
      ),
    );

class SpotifySplash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SpotifySplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      backgroundColor: Colors.black,
      image: Image.asset("assets/spotify.jpg"),
      photoSize: 200,
      loaderColor: Colors.black,
      navigateAfterSeconds: Home(),
    );
  }
}
