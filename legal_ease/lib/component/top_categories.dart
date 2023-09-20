import 'package:flutter/material.dart';

class TopCategories extends StatelessWidget {
  final String domain;
  final String image;
  const TopCategories({super.key, required this.domain, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 96,
          height: 86,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: OvalBorder(
              side: BorderSide(
                width: 1,
                color: Colors.black.withOpacity(0.20000000298023224),
              ),
            ),
          ),
          child: Image.asset(image),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          domain,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        )
      ],
    );
  }
}
