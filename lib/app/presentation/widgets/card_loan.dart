import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/styles/color_constants.dart';
import 'package:mobile/styles/text_styles.dart';

class CardLoan extends StatelessWidget {
  const CardLoan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorConstants.slate[200]!,
        ),
        borderRadius: BorderRadius.circular(15.w),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: ColorConstants.primary[500],
                  borderRadius: BorderRadius.circular(8.w),
                ),
                margin: EdgeInsets.only(right: 16.w),
                child: Icon(
                  Icons.store,
                  color: ColorConstants.primary[500],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Resto Livia",
                      style: h5TextStyle(),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      "Jumlah",
                      style: body5TextStyle(),
                    ),
                    Text(
                      'Rp1.000.000',
                      style: body3BTextStyle(),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Apr 2024",
                    style: body6TextStyle(),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "Tenor",
                    style: body5TextStyle(),
                  ),
                  Text(
                    "6 Bulan",
                    style: body5BTextStyle(),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "In Progress",
                style: body5BTextStyle(),
              ),
              Row(children: [
                Text(
                  "Loan Details",
                  style: body6TextStyle(
                    color: ColorConstants.primary[500],
                    weight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 2.w),
                Icon(
                  Icons.chevron_right,
                  color: ColorConstants.primary[500],
                  size: 16.w,
                ),
              ]),
            ],
          )
        ],
      ),
    );
  }
}
