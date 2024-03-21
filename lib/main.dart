import 'package:flutter/material.dart';
import 'package:fooddelvery/auth/login_or_signup.dart';
import 'package:fooddelvery/screens/signup_screen.dart';
import 'package:fooddelvery/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: LoginOrSignup(),
    );
  }
}
