import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/controller/talangan_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/app/presentation/partials/talangan/credit_score.dart';
import 'package:mobile/app/presentation/partials/talangan/financial_tips.dart';
import 'package:mobile/app/presentation/widgets/app_bottombar.dart';
import 'package:mobile/app/presentation/widgets/app_button.dart';
import 'package:mobile/routes/app_route.dart';
import 'package:mobile/styles/color_constants.dart';
import 'package:mobile/styles/text_styles.dart';

class TalanganPage extends GetView<TalanganController> {
  const TalanganPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottombar(index: 3),
      body: Stack(
        children: [
          Positioned(
            top: -400.h,
            left: -450.w,
            child: Image.asset(
              "assets/images/talangan_bg.png",
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Hi, Livia Mandira",
                      style: h3BTextStyle(),
                    ),
                    SizedBox(height: 22.h),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff033DED).withOpacity(.1),
                        borderRadius: BorderRadius.circular(15.w),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.w),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Balance Talangan",
                                  style: body5TextStyle(),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.hexagon,
                                      color: Colors.black,
                                      size: 16.w,
                                    ),
                                    SizedBox(width: 4.w),
                                    Text(
                                      "1.024 Poin",
                                      style: body5TextStyle(),
                                    ),
                                    Icon(
                                      Icons.chevron_right,
                                      color: Colors.black,
                                      size: 16.w,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(15.w),
                            decoration: BoxDecoration(
                              color: ColorConstants.primary[500],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Saldo Tersedia',
                                      style: body6TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Lihat Detail",
                                      style: body6TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  "Rp4.300.000",
                                  style: h2BTextStyle(color: Colors.white),
                                ),
                                SizedBox(height: 12.h),
                                Container(
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.w),
                                  ),
                                  clipBehavior: Clip.antiAlias,
                                  child: LinearProgressIndicator(
                                    value: 0.8,
                                    backgroundColor: ColorConstants.slate[100],
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.yellow,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    AppButton(
                      onPressed: () {
                        Get.toNamed(AppRoute.loan);
                      },
                      text: "Ajukan Talangan",
                      color: Color(0xff09AE9A),
                      textStyle: body5BTextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 20.h),
                    CreditScore(),
                    SizedBox(height: 40.h),
                    FinancialTips(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
