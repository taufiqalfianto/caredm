import 'package:dmcare/theme.dart';
import 'package:dmcare/widget/button_action.dart';
import 'package:dmcare/widget/button_action_border.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 250,
              height: 250,
              margin: EdgeInsets.symmetric(vertical: 45),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/logo_light.png'),
              )),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(right: 90),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    'Manage Your Blood Sugar\nNow',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ButtonAction(
              btn: 'Sign Up With Google',
              routes: '',
            ),
            SizedBox(
              height: 25,
            ),
            ButtonBorder(
              color: kPrimarycolor,
              btn: 'Create Account',
              route: '/register',
            ),
            SizedBox(
              height: 55,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have any account ?',
                  style: blackTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    'Login',
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
