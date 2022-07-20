import 'package:flutter/material.dart';
import 'package:dmcare/theme.dart';

class TextFieldPassword extends StatefulWidget {
  const TextFieldPassword({Key? key}) : super(key: key);

  @override
  State<TextFieldPassword> createState() => _TextFieldPasswordState();
}

class _TextFieldPasswordState extends State<TextFieldPassword> {
  bool isShowPasswordError = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 350,
          height: 50,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        if (isShowPasswordError)
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              'Password anda salah',
              style: redTextStyle.copyWith(
                fontSize: 14,
                fontWeight: bold,
              ),
            ),
          )
      ],
    );
  }
}
