import 'package:flutter/material.dart';
import 'package:uis/pages/loginpage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool phone = true;
  bool email = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 130,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200.0),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(1.5),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200.0),
                              color: Colors.black,
                            ),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 200,
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                phone = true;
                                email = false;
                              });
                            },
                            child: Center(
                              child: Text("PHONE NUMBER",
                                  style: email
                                      ? TextStyle(color: Colors.white)
                                      : TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        )),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                email = true;
                                phone = false;
                              });
                            },
                            child: Center(
                              child: Text("EMAIL ADDRESS",
                                  style: phone
                                      ? TextStyle(color: Colors.white)
                                      : TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Visibility(
                    visible: phone,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.grey[900],
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                children: [
                                  Text(
                                    "IN +91",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 18),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: VerticalDivider(
                                      color: Colors.black,
                                      thickness: 2,
                                      width: 20,
                                    ),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Phone number',
                                          hintStyle:
                                              TextStyle(color: Colors.grey)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "You may receive SMS updates from Instagram and can opt out at any time.",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        NextButton(),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: email,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.grey[900],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Email address',
                                    hintStyle: TextStyle(color: Colors.grey)),
                              ),
                            ),
                          ),
                        ),
                        NextButton(),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Divider(color: Colors.grey),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      InkWell(
                        child: Text(
                          'Log in.',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => LoginInPage()));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
          child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            color: Colors.blueAccent[400]),
        child: Center(
          child: Text(
            "Next",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      )),
    );
  }
}
