import 'package:flutter/material.dart';
import 'package:dmcare/theme.dart';
import 'package:fluttertoast/fluttertoast.dart';

class VerfiyButton extends StatefulWidget {
  final Widget pass;
  const VerfiyButton({Key? key, required this.pass}) : super(key: key);

  @override
  State<VerfiyButton> createState() => _VerfiyButtonState();
}

class _VerfiyButtonState extends State<VerfiyButton> {
  late FToast fToast;
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  bool isShowPasswordError = false;
  bool isRememberMe = false;
  bool isLoading = false;

  Object get pass => pass;
  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      height: 55,
      width: 350,
      child: TextButton(
        onPressed: () {
          setState(() {
            isLoading = true;
          });
          Future.delayed(
            Duration(seconds: 2),
            (() {
              setState(
                () {
                  isLoading = false;
                  if (passwordController.text != pass) {
                    setState(
                      () {
                        isShowPasswordError = true;
                      },
                    );
                    fToast.showToast(
                      child: erortoast(),
                      gravity: ToastGravity.BOTTOM,
                      toastDuration: Duration(seconds: 2),
                    );
                  } else
                    (Navigator.pushNamed(context, '/homepage'));
                },
              );
            }),
          );
        },
        style: TextButton.styleFrom(
          backgroundColor: kPrimarycolor,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: isLoading
            ? CircularProgressIndicator(
                color: kWhiteColor,
                backgroundColor: kGreyColor,
              )
            : Text(
                'Login',
                style: whiteTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
      ),
    );
  }

  Widget erortoast() {
    return Container(
      height: 48,
      width: 150,
      // padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kRedColor,
      ),
      child: Center(
        child: Text(
          'Password Salah',
          style: whiteTextStyle.copyWith(
            fontSize: 14,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}
