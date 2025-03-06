import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/controller/talangan_controller.dart';
import 'package:mobile/app/presentation/widgets/app_button.dart';
import 'package:mobile/app/presentation/widgets/loan_scaffold.dart';
import 'package:mobile/routes/app_route.dart';
import 'package:mobile/styles/color_constants.dart';
import 'package:mobile/styles/text_styles.dart';

class LoanPage extends GetView<TalanganController> {
  const LoanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LoanScaffold(
      title: "Loan",
      child: Container(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                border: Border.all(color: ColorConstants.primary[400]!),
                borderRadius: BorderRadius.circular(20.w),
              ),
              child: Column(
                children: [
                  Text(
                    "You approved loan amount Up to",
                    style: body5TextStyle(),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Rp5.000.000",
                    style: body2BTextStyle(),
                  ),
                  SizedBox(height: 16.h),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.w),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: LinearProgressIndicator(
                      value: 0.5,
                      minHeight: 20,
                      backgroundColor: Colors.grey[300],
                      color: ColorConstants.primary[500],
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1,000,000',
                        style: body5BTextStyle(),
                      ),
                      Text(
                        '10,000,000',
                        style: body5BTextStyle(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.w),
                      color: Color(0xffDFE6FF),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.w),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff5B93FF).withOpacity(.5),
                          ),
                          child: Icon(
                            Icons.currency_exchange,
                            color: ColorConstants.primary[500],
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Processing Fee",
                              style: body6TextStyle(),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              "500 - 800",
                              style: body5BTextStyle(weight: FontWeight.w900),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15.w),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.w),
                      color: Color(0xffDFE6FF),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.w),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff5B93FF).withOpacity(.5),
                          ),
                          child: Icon(
                            Icons.timelapse,
                            color: ColorConstants.primary[500],
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tenure",
                              style: body6TextStyle(),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              "Up to 30 days",
                              style: body5BTextStyle(weight: FontWeight.w900),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Text(
              "Features :",
              style: body5BTextStyle(),
            ),
            SizedBox(height: 10.h),
            ...[
              [Icons.timelapse, "Minimum time limit to pay."],
              [Icons.circle_notifications, "Quick repayment available."],
              [Icons.visibility_off, "No hidden Charges."],
              [Icons.download, "The amount will be credited within 1 hour."],
              [Icons.thumb_up, "NOC will be share within 48 hrs."],
              [Icons.verified, "Aadhar OTP Authectication"],
            ].map((e) => Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15.w),
                          padding: EdgeInsets.all(5.w),
                          decoration: BoxDecoration(
                            color: Color(0xff5B93FF).withOpacity(.5),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            e[0] as IconData,
                            color: ColorConstants.primary[500],
                            size: 15.w,
                          ),
                        ),
                        Text(
                          e[1] as String,
                          style: body5TextStyle(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                )),
            SizedBox(
              height: .25.sh,
            ),
            AppButton(
                onPressed: () {
                  Get.toNamed(AppRoute.loanInstallment);
                },
                text: "Next"),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
