import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/controller/loan_controller.dart';
import 'package:mobile/app/presentation/partials/home/home_cashflow.dart';
import 'package:mobile/app/presentation/partials/talangan/all_loan.dart';
import 'package:mobile/app/presentation/widgets/app_button.dart';
import 'package:mobile/app/presentation/widgets/credit_chart.dart';
import 'package:mobile/app/presentation/widgets/loan_scaffold.dart';

class CreditScorePage extends GetView<LoanController> {
  const CreditScorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LoanScaffold(
      title: 'Credit Score Details',
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            CreditChart(),
            SizedBox(height: 20.h),
            HomeCashflow(),
            SizedBox(height: 28.h),
            AllLoan(),
            SizedBox(height: 40.h),
            AppButton(
              onPressed: () {
                Get.back();
              },
              text: "Home",
              width: 1.sw,
            ),
          ],
        ),
      ),
    );
  }
}
