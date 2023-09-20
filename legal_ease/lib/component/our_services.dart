import 'package:flutter/material.dart';

class OurServices extends StatelessWidget {
  final String image;
  final String text;
  const OurServices({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
            onTap: () {
              print(text);
            },
            child: Container(
              width: 82,
              height: 72,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0.20000000298023224),
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: Image.asset(image),
            )),
        SizedBox(
          height: 8,
        ),
        Text(
          text,
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
