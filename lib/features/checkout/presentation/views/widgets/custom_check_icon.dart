import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50.r,
      backgroundColor: const Color(0xffD9D9D9),
      child: CircleAvatar(
        radius: 40.r,
        backgroundColor: const Color(0xff34A853),
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: 50.r,
        ),
      ),
    );
  }
}
