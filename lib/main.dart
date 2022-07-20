import 'package:dmcare/pages/forgot_password.dart';
import 'package:dmcare/pages/homepage.dart';
import 'package:dmcare/pages/login_page.dart';
import 'package:dmcare/pages/onboarding_page.dart';
import 'package:dmcare/pages/register_page.dart';
import 'package:dmcare/pages/register_succes_page.dart';
import 'package:dmcare/pages/splash_screen.dart';
import 'package:dmcare/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => SplasPage(),
        "/onboarding": (context) => OnboardingPages(),
        "/welcome": (context) => WelcomePage(),
        "/login": (context) => Login(),
        "/register": (context) => RegisterPage(),
        "/forgot": (context) => ForgotPassword(),
        "/succes": (context) => RegisterSucces(),
        "/homepage": (context) => HomePage(),
        
        // "/welcome": (context) => WelcomePage(),
      },
    );
  }
}
