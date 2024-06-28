import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 305.w,
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 22.w),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15.r,
            ),
          )),
      child: Row(
        children: [
          SvgPicture.asset("assets/images/credit_card_logo.svg"),
          Gap(23.w),
          Text.rich(
            TextSpan(children: [
              const TextSpan(
                text: "Credit Card\n",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              TextSpan(
                text: "Mastercard **78",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.699999988079071),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
