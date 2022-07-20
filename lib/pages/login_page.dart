import 'package:dmcare/theme.dart';
import 'package:dmcare/widget/button_action_border.dart';
import 'package:dmcare/widget/button_verify.dart';
import 'package:dmcare/widget/text_field.dart';
import 'package:dmcare/widget/text_field_password.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: 250,
                height: 100,
                margin: EdgeInsets.symmetric(vertical: 100, horizontal: 120),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo_light.png'),
                  ),
                ),
              ),
              username(),
              password(),
              Container(
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Forgot Password ?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 77,
              ),
              VerfiyButton(pass: username()),
              SizedBox(
                height: 24,
              ),
              ButtonBorder(
                color: kPrimarycolor,
                btn: 'Sign Up',
                route: '/register',
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget username() {
    return Column(
      children: [
        TextFields(
          label: 'Username',
          secure: false,
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }

  Widget password() {
    return Column(
      children: [
        TextFieldPassword(),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
