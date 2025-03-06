import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/controller/loan_controller.dart';
import 'package:mobile/app/presentation/widgets/app_button.dart';
import 'package:mobile/app/presentation/widgets/app_input.dart';
import 'package:mobile/app/presentation/widgets/loan_scaffold.dart';
import 'package:mobile/routes/app_route.dart';
import 'package:mobile/styles/color_constants.dart';
import 'package:mobile/styles/text_styles.dart';

class LoanInstallmentPage extends GetView<LoanController> {
  const LoanInstallmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LoanScaffold(
      title: "Loan Installment",
      child: Container(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jumlah",
                            style: body5TextStyle(),
                          ),
                          Text(
                            "Rp. 1.000.000",
                            style: body5BTextStyle(),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name",
                            style: body5TextStyle(),
                          ),
                          Text(
                            "Andi S",
                            style: body5BTextStyle(),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tenor",
                            style: body5TextStyle(),
                          ),
                          Text(
                            "6 Bulan",
                            style: body5BTextStyle(),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bank Account",
                            style: body5TextStyle(),
                          ),
                          Text(
                            "Rp. 1.000.000",
                            style: body5BTextStyle(),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              height: 40.h,
              color: ColorConstants.slate[200],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(height: 40.h),
                    Icon(
                      Icons.circle,
                      color: ColorConstants.primary[500],
                      size: 8,
                    ),
                    Container(
                      height: 60.h,
                      width: 1.w,
                      color: ColorConstants.slate[200],
                    ),
                    Icon(
                      Icons.circle,
                      color: ColorConstants.primary[500],
                      size: 8,
                    ),
                    Container(
                      height: 60.h,
                      width: 1.w,
                      color: ColorConstants.slate[200],
                    ),
                    Icon(
                      Icons.circle,
                      color: ColorConstants.primary[500],
                      size: 8,
                    ),
                    Container(
                      height: 60.h,
                      width: 1.w,
                      color: ColorConstants.slate[200],
                    ),
                    Icon(
                      Icons.circle,
                      color: ColorConstants.primary[500],
                      size: 8,
                    ),
                    Container(
                      height: 60.h,
                      width: 1.w,
                      color: ColorConstants.slate[200],
                    ),
                    Icon(
                      Icons.circle,
                      color: ColorConstants.primary[500],
                      size: 8,
                    ),
                  ],
                ),
                SizedBox(
                  width: 8.w,
                ),
                Expanded(
                  child: Column(
                    children: [
                      AppInput(
                        controller:
                            TextEditingController(text: "Rp. 3.750.000"),
                        label: "August",
                        readOnly: true,
                      ),
                      SizedBox(height: 12.h),
                      AppInput(
                        controller:
                            TextEditingController(text: "Rp. 3.750.000"),
                        label: "September",
                        readOnly: true,
                      ),
                      SizedBox(height: 12.h),
                      AppInput(
                        controller:
                            TextEditingController(text: "Rp. 3.750.000"),
                        label: "October",
                        readOnly: true,
                      ),
                      SizedBox(height: 12.h),
                      AppInput(
                        controller:
                            TextEditingController(text: "Rp. 3.750.000"),
                        label: "November",
                        readOnly: true,
                      ),
                      SizedBox(height: 12.h),
                      AppInput(
                        controller:
                            TextEditingController(text: "Rp. 3.750.000"),
                        label: "December",
                        readOnly: true,
                      ),
                      SizedBox(height: 12.h),
                      AppInput(
                        controller:
                            TextEditingController(text: "Rp. 3.750.000"),
                        label: "January",
                        readOnly: true,
                      ),
                      SizedBox(height: 12.h),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20.h),
            AppButton(
              onPressed: () {
                Get.toNamed(AppRoute.loanSummary);
              },
              text: "Proses",
            ),
            SizedBox(height: 12.h),
            AppButton(
              variant: AppButtonVariant.secondary,
              onPressed: () {
                Get.back();
              },
              text: "Kembali",
            ),
            SizedBox(height: 12.h),
          ],
        ),
      ),
    );
  }
}
