import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/styles/color_constants.dart';
import 'package:mobile/styles/text_styles.dart';

class LoanScaffold extends StatelessWidget {
  Widget child;
  String title;
  LoanScaffold({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primary[500],
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 120.h),
                Container(
                  width: 1.sw,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20.w),
                    ),
                  ),
                  child: child,
                ),
              ],
            ),
          ),
          Positioned(
            child: SafeArea(
              child: Row(
                children: [
                  IconButton(
                    iconSize: 22.sp,
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.chevron_left,
                      size: 26.w,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    title,
                    style: h4BTextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
