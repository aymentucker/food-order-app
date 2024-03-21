import 'package:flutter/material.dart';
import 'package:fooddelvery/screens/login_screen.dart';
import 'package:fooddelvery/screens/signup_screen.dart';

class LoginOrSignup extends StatefulWidget {
  const LoginOrSignup({super.key});

  @override
  _LoginOrSignupState createState() => _LoginOrSignupState();
}

class _LoginOrSignupState extends State<LoginOrSignup> {
//initially , login screen
  bool showLoginScreen = true;

// toggle between login and signup page

  void toggleScreens() {
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginScreen) {
      return LoginScreen(
        onTap: toggleScreens,
      );
    } else {
      return SignupScreen(
        onTap: toggleScreens,
      );
    }
  }
}
