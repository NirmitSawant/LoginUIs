import 'package:flutter/material.dart';

class EmailIn extends StatefulWidget {
  @override
  _EmailInState createState() => _EmailInState();
}

class _EmailInState extends State<EmailIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFd7efef),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Text(
                "Sign in with email",
                style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Your email",
                style: TextStyle(color: Colors.grey[800]),
              ),
              TextField(
                cursorColor: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Center(
                      child: Text(
                    "Continue",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFF03A87D),
                      borderRadius: BorderRadius.circular(6)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
