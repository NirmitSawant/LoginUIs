import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _passwordVisible = false;

  @override
  // ignore: must_call_super
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Welcome back!",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Log in with your email to start talking.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.grey[900],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: TextField(
                    obscureText: !_passwordVisible,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.cancel,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {});
                        },
                      ),
                      border: InputBorder.none,
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.grey[900],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: TextField(
                    obscureText: !_passwordVisible,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
              child: Text(
                "Forgot your password?",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
              child: Text(
                "Use a password manager?",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            LoginButton(),
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
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Color(0xFF7289d9)),
              child: Center(
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              )),
        ));
  }
}
