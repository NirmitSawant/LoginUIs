import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:uis/home.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash(),
      ),
    );

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      backgroundColor: Colors.black,
      image: Image.asset("assets/medium.png"),
      photoSize: 130,
      loaderColor: Colors.black,
      navigateAfterSeconds: Home(),
    );
  }
}
