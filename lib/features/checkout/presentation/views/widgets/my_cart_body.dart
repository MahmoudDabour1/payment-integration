import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:payment_integration/features/checkout/presentation/views/payment_details_view.dart';
import 'package:payment_integration/features/checkout/presentation/views/widgets/payment_methods_bottom_sheet.dart';
import 'package:payment_integration/features/checkout/presentation/views/widgets/total_price.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'order_info_item.dart';

class MyCartBody extends StatelessWidget {
  const MyCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          Gap(18.h),
          Expanded(
            child: Image.asset(
              "assets/images/basket_image.png",
            ),
          ),
          Gap(25.h),
          const OrderInfoItem(
            title: "Order Subtotal",
            value: r"$42.97",
          ),
          Gap(3.h),
          const OrderInfoItem(
            title: "Discount",
            value: r"$0",
          ),
          Gap(3.h),
          const OrderInfoItem(
            title: "Shipping",
            value: r"$8",
          ),
          Divider(
            thickness: 2,
            color: const Color(0xffC7C7C7),
            height: 34.h,
          ),
          const TotalPrice(
            title: "Total",
            value: r"$50.97",
          ),
          Gap(16.h),
          CustomButton(
            title: "Complete Payment",
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const PaymentMethodsBottomSheet();
                },
              );
            },
          ),
          Gap(12.h),
        ],
      ),
    );
  }
}
