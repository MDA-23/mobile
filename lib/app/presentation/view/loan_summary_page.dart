import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/controller/loan_controller.dart';
import 'package:mobile/app/presentation/widgets/app_button.dart';
import 'package:mobile/app/presentation/widgets/loan_scaffold.dart';
import 'package:mobile/routes/app_route.dart';
import 'package:mobile/styles/color_constants.dart';
import 'package:mobile/styles/text_styles.dart';

class LoanSummaryPage extends GetView<LoanController> {
  const LoanSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LoanScaffold(
      title: "Loan Summary",
      child: Container(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Text(
                "Loan Summary",
                style: h5BTextStyle(),
              ),
            ),
            Divider(
              color: ColorConstants.slate[200],
              height: 30.h,
            ),
            ...[
              ["Approved Loan Amount", '5000'],
              ["Processing Fees", '550'],
              ["20% off on fees", '125'],
              ["Interest (12%)", '955'],
            ].map((e) => _loanSummaryItem(e[0], e[1])),
            Divider(
              color: ColorConstants.slate[200],
              height: 30.h,
            ),
            ...[
              ["Total", '5405'],
              ["Loan Term", '30 Days'],
              ["Foreclose Amount", '00'],
            ].map((e) => _loanSummaryItem(e[0], e[1])),
            SizedBox(height: 30.h),
            _loanSummaryItem("Redeem Code", "Remove"),
            SizedBox(height: 12.h),
            Container(
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.w),
                border: Border.all(color: ColorConstants.slate[300]!),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "FIRSTOFFER",
                    style: body5TextStyle(weight: FontWeight.w500),
                  ),
                  Text(
                    "Check more",
                    style: body5TextStyle(
                      weight: FontWeight.w500,
                      color: ColorConstants.primary[500],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: .3.sh),
            AppButton(
              onPressed: () {
                Get.toNamed(AppRoute.loanApproved);
              },
              text: "Apply for Loan",
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _loanSummaryItem(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: body5TextStyle(
              weight: FontWeight.w500,
            ),
          ),
          Text(
            value,
            style: body5TextStyle(
              weight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
