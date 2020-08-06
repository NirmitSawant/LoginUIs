import 'package:flutter/material.dart';
import 'package:uis/pages/loginpage.dart';
import 'package:uis/pages/phone_forgot.dart';
import 'package:uis/pages/signuppage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "मराठी",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Text(
                  "  ",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "हिंदी",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Text(
                  "  ",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "More..",
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 150),
            Image(
              image: AssetImage("assets/faceb.png"),
              height: 70,
              width: 70,
            ),
            SizedBox(height: 150),
            Text(
              "Have you used Facebook before?",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
            ),
            SizedBox(height: 20),
            LoginButton(),
            SizedBox(height: 15),
            SignUpButton(),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => PhoneForgot()));
              },
              child: Text(
                "Forgotten Password?",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
      },
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Colors.blueAccent[400]),
                child: Center(
                  child: Text(
                    "Yes, Log In",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                )),
          )),
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => SignUpPage()));
      },
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Colors.blue[100]),
                child: Center(
                  child: Text(
                    "No, Create New Facebook Account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                )),
          )),
    );
  }
}
