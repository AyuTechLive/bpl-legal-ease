import 'package:flutter/material.dart';

class SignupBottom extends StatelessWidget {
  final double height;
  final String text1;
  final String text2;
  final String approute;
  const SignupBottom(
      {super.key,
      required this.height,
      required this.text1,
      required this.text2, required this.approute});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      height: height,
      decoration: ShapeDecoration(
        color: Color(0xFF171717),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.black.withOpacity(0.20000000298023224),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text1,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontFamily: 'Quantico',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            TextButton(
                onPressed: () {
                  print('Sign Up Clicked');
                  Navigator.of(context).pushReplacementNamed(approute);
                },
                child: Text(
                  text2,
                  style: TextStyle(
                    color: Color(0xFF0056FF),
                    fontSize: 17,
                    fontFamily: 'Quantico',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ))
          ],
        ),
      ]),
    );
  }
}
