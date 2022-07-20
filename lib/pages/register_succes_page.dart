import 'dart:async';

import 'package:dmcare/theme.dart';
import 'package:flutter/material.dart';

class RegisterSucces extends StatefulWidget {
  const RegisterSucces({Key? key}) : super(key: key);

  @override
  State<RegisterSucces> createState() => _RegisterSuccesState();
}

class _RegisterSuccesState extends State<RegisterSucces> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          '/homepage',
          ((route) => false),
        );
      },
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCyanBackgroundColor,
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/homepage');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 100),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/logo_light.png',
                  ),
                ),
              ),
            ),
            Text(
              'Sign Up Succes\nSuccessfully',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
