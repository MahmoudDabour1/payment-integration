import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title,required this.onPressed});

  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
        backgroundColor: const Color(0xff34A853),
        fixedSize: Size(double.infinity, 60.h),
      ),

      child: Center(
        child: Text(
          title,
          style: Styles.textStyle22,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
