import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile/styles/color_constants.dart';
import 'package:mobile/styles/text_styles.dart';

class HomeCashflow extends StatelessWidget {
  String currDate = DateFormat('MMMM yyyy').format(DateTime.now());

  HomeCashflow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Cashflow",
              style: body4BTextStyle(),
            ),
            Row(
              children: [
                Text(
                  currDate,
                  style: body6TextStyle(),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 6.h),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.w),
                  boxShadow: [ColorConstants.shadow[1]!],
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/icons/income.png",
                      width: 40.w,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      "Income",
                      style: body5BTextStyle(
                        color: ColorConstants.slate[600],
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      "Rp1.000.000",
                      style: body3BTextStyle(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.w),
                  boxShadow: [ColorConstants.shadow[1]!],
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/icons/outcome.png",
                      width: 40.w,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      "Outcome",
                      style: body5BTextStyle(
                        color: ColorConstants.slate[600],
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      "Rp900.000",
                      style: body3BTextStyle(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
