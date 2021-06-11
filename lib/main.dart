import 'package:flutter/material.dart';
//Below, place your login screens into folders, and place their main files under here like this
import 'spotify/appScreen.dart';
import 'snapchat/main.dart';
import 'discord/main.dart';
import 'facebook/main.dart';
import 'instagram/main.dart';
import 'medium/main.dart';

void main() {
  runApp(new LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login UIs',
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryColor: const Color(0xFF607d8b),
        accentColor: const Color(0xFF607d8b),
        canvasColor: const Color(0xFFfafafa),
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => LoginHomePage(),
        // Link to the other app's widgets here:
        '/spotify': (context) => SpotifySplash(),
        '/snapchat': (context) => SnapSplash(),
        '/discord': (context) => DiscordSplash(),
        '/facebook': (context) => FaceSplash(),
        '/instagram': (context) => InstagramSplash(),
        '/medium': (context) => MediumSplash(),
      },
    );
  }
}

class LoginHomePage extends StatefulWidget {
  LoginHomePage({Key key}) : super(key: key);
  @override
  _LoginHomePageState createState() => new _LoginHomePageState();
}

Widget buildAppWidget(String location, Color backgroundColor, String icon,
    bool fillIcon, BuildContext context) {
  return new Padding(
      padding: EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          // Navigate to the second screen using a named route.
          // Location is defined as the route above^
          Navigator.pushNamed(context, location);
        },
        child: new Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: new Center(
              child: Image.asset(
            icon,
            fit: BoxFit.cover,
            height: (fillIcon) ? 110 : 75,
            width: (fillIcon) ? 110 : 75,
          )),
        ),
      ));
}

class _LoginHomePageState extends State<LoginHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Login UIs'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          new Expanded(
              child: new SingleChildScrollView(
                  child: Wrap(children: [
            new Center(
                child: buildAppWidget("/spotify", Colors.black,
                    "assets/spotify.jpg", false, context)),
            new Center(
                child: buildAppWidget("/snapchat", Color(0xFFFFFC01),
                    "assets/snapchat.png", false, context)),
            new Center(
                child: buildAppWidget("/discord", Color(0xFF2C2F33),
                    "assets/discord.png", false, context)),
            new Center(
                child: buildAppWidget("/facebook", Color(0xFF1877F2),
                    "assets/faceb.png", false, context)),
            new Center(
                child: buildAppWidget("/instagram", Color(0xFF000000),
                    "assets/insta.png", false, context)),
            new Center(
                child: buildAppWidget("/medium", Color(0xFF000000),
                    "assets/mediumICON.png", false, context)),
          ])))
        ],
      ),
    );
  }
}
