import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final String image;
  const AppTextField({super.key, required this.hint, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 338,
      height: 50,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.black.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 50,
            decoration: ShapeDecoration(
              color: Color(0x75D9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
            child: Image.asset(image),
          ),
          Expanded(
              child: TextField(
            decoration: InputDecoration(
              hintText: hint,
              border: InputBorder.none,
            ),
          ))
        ],
      ),
    );
  }
}
