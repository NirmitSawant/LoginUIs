import 'package:flutter/material.dart';

class EmailUp extends StatefulWidget {
  @override
  _EmailUpState createState() => _EmailUpState();
}

class _EmailUpState extends State<EmailUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFd7efef),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Text(
                    "Sign up with email",
                    style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Your full name",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                  TextField(
                    cursorColor: Colors.black,
                  ),
                  SizedBox(
                    height: 30,
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
                        "Create Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFF03A87D),
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      "By creating an account, I accept Medium's",
                      style: TextStyle(color: Colors.grey[700], fontSize: 14),
                    ),
                    Text(
                      "Terms of Service",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
