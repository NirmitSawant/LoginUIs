import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'home.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DiscordSplash(),
      ),
    );

class DiscordSplash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<DiscordSplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      backgroundColor: Colors.black,
      image: Image.asset("assets/discord.jpg"),
      photoSize: 130,
      loaderColor: Colors.black,
      navigateAfterSeconds: Home(),
    );
  }
}
