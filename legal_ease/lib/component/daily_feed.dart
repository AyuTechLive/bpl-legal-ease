import 'package:flutter/material.dart';

class DailyFeed extends StatelessWidget {
  const DailyFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      width: 192,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xff000000).withOpacity(0.2),
        ),
        boxShadow: const [
          BoxShadow(
        color: Color(0x68A5A5A5),
        blurRadius: 4,
        offset: Offset(0, 4),
        spreadRadius: 0,
      )
        ],
      ),
      child: const Row(
        children: [],
      ),
    );
  }
}
