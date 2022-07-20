import 'package:flutter/material.dart';
import 'package:dmcare/theme.dart';
import 'package:dmcare/widget/text_field.dart';

import '../widget/button_action.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          currentpassword(),
          changepassword(),
          verifypassword(),
          signup(context),
        ],
      ),
    );
  }

  Widget title() {
    return Center(
      child: Container(
        padding: EdgeInsets.only(
          top: 84,
          bottom: 65,
        ),
        child: Text(
          'Forgot\nPassword',
          textAlign: TextAlign.center,
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget currentpassword() {
    return Column(
      children: [
        TextFields(
          label: 'Current Password',
          secure: true,
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }

  Widget changepassword() {
    return Column(
      children: [
        TextFields(
          label: 'New Password',
          secure: true,
        ),
        SizedBox(
          height: 24,
        )
      ],
    );
  }

  Widget verifypassword() {
    return Column(
      children: [
        TextFields(
          label: 'Confirm Password',
          secure: true,
        ),
        SizedBox(
          height: 48,
        ),
        
      ],
    );
  }

  Widget signup(BuildContext context) {
    return ButtonAction(
      btn: 'Change Password',
      routes: '/login',
    );
  }
}
