import 'package:flutter/material.dart';
import 'package:dmcare/theme.dart';

class ButtonAction extends StatelessWidget {
  final String btn;
  final String routes;

  const ButtonAction({
    Key? key,
    required this.btn,
    required this.routes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 50,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, routes);
        },
        style: TextButton.styleFrom(
          backgroundColor: kPrimarycolor,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(
          btn,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}
