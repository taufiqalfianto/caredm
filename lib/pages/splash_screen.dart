import 'dart:async';
import 'package:flutter/material.dart';
import 'package:dmcare/theme.dart';

class SplasPage extends StatefulWidget {
  const SplasPage({Key? key}) : super(key: key);

  @override
  State<SplasPage> createState() => _SplasPageState();
}

class _SplasPageState extends State<SplasPage> {
  @override
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          '/onboarding',
          ((route) => false),
        );
      },
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimarycolor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 15),
              width: 98,
              height: 82,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo_light.png'),
                ),
              ),
            ),
            Text(
              'Space',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
