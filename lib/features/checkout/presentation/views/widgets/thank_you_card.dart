import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:payment_integration/core/utils/styles.dart';
import 'package:payment_integration/features/checkout/presentation/views/widgets/payment_item_info.dart';
import 'package:payment_integration/features/checkout/presentation/views/widgets/total_price.dart';

import 'card_info_widget.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xffEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 50 + 16.h, left: 22.w, right: 22.w),
        child: Column(
          children: [
            Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: Styles.textStyle25,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: Styles.textStyle20,
            ),
            Gap(42.h),
            const PaymentItemInfo(
              title: "Date",
              value: "01/24/2023",
            ),
            Gap(20.h),
            const PaymentItemInfo(
              title: "Time",
              value: "10:15 AM",
            ),
            Gap(20.h),
            const PaymentItemInfo(
              title: "To",
              value: "Sam Louis",
            ),
            Divider(
              height: 60.h,
              thickness: 2.r,
            ),
            const TotalPrice(title: "Total", value: r"$50.97"),
            Gap(30.h),
            const CardInfoWidget(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  size: 70.r,
                  FontAwesomeIcons.barcode,
                ),
                Container(
                  width: 113.w,
                  height: 58.h,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                          side: BorderSide(
                            width: 1.50.w,
                            color: const Color(0xff34A853),
                          ))),
                  child: Center(
                    child: Text(
                      'PAID',
                      style: Styles.textStyle24
                          .copyWith(color: const Color(0xff34A853)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * 0.2 + 20) / 2) - 29,
            ),
          ],
        ),
      ),
    );
  }
}
