import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobile/app/controller/loan_onboard_controller.dart';
import 'package:mobile/app/presentation/widgets/app_input_file.dart';
import 'package:mobile/app/presentation/widgets/talangan_scaffold.dart';

class LoanDocumentPage extends GetView<LoanOnboardController> {
  const LoanDocumentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TalanganScaffold(
        title: "Dokumen Tambahan",
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppInputFile(
              extensions: ["jpg", "png", "jpeg", "pdf"],
              onChange: (e) {},
              onRemove: () {},
              label: "KTP",
            ),
            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }
}
