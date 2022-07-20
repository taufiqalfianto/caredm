import 'package:dmcare/theme.dart';
import 'package:dmcare/widget/button_action.dart';
import 'package:dmcare/widget/text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          name(),
          email(),
          phonenumber(),
          address(),
          password(),
          verifypassword(),
          signup(context),
        ],
      ),
    );
  }

  Widget title() {
    return     Center(
      child: Container(
        padding: EdgeInsets.only(
          top: 84,
          bottom: 65,
        ),
        child: Text(
          'Sign Up',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget name() {
    return Column(
      children: [
        TextFields(
          label: 'Your Name',
          secure: false,
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }

  Widget email() {
    return Column(
      children: [
        TextFields(
          label: 'Email',
          secure: false,
        ),
        SizedBox(
          height: 24,
        )
      ],
    );
  }

  Widget phonenumber() {
    return Column(
      children: [
        TextFields(
          label: 'Phone Number',
          secure: false,
        ),
        SizedBox(
          height: 24,
        )
      ],
    );
  }

  Widget address() {
    return Column(
      children: [
        TextFields(
          label: 'Address',
          secure: false,
        ),
        SizedBox(
          height: 24,
        )
      ],
    );
  }

  Widget password() {
    return Column(
      children: [
        TextFields(
          label: 'Password',
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
          label: 'Verify Password',
          secure: true,
        ),
        SizedBox(
          height: 48,
        )
      ],
    );
  }

  Widget signup(BuildContext context) {
    return ButtonAction(
      btn: 'Sign Up',
      routes: '/succes',
    );
  }
}
