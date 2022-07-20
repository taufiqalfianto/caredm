import 'package:flutter/material.dart';
import 'package:dmcare/theme.dart';

class ButtonBorder extends StatelessWidget {
  final String btn;
  final Color color;
  final String route;
  const ButtonBorder({
    Key? key,
    required this.color,
    required this.btn,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 50,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        style: TextButton.styleFrom(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(
              color: color,
              width: 1,
            ),
          ),
        ),
        child: Text(
          btn,
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}
