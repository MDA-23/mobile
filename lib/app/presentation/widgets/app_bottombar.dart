import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/routes/app_route.dart';
import 'package:mobile/styles/color_constants.dart';
import 'package:mobile/styles/text_styles.dart';

class AppBottombar extends StatelessWidget {
  int index;
  AppBottombar({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), label: 'Belanja'),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/catalogue.png",
                width: 24.w,
              ),
              label: 'Katalog'),
          BottomNavigationBarItem(
              icon: Icon(Icons.money_outlined), label: 'Talangan'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
        currentIndex: index,
        selectedItemColor: Color(0xFF0D47A1),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 3) {
            Get.toNamed(AppRoute.talangan);
          }
          if (index == 0) {
            Get.toNamed(AppRoute.home);
          }
        },
        unselectedLabelStyle: body5TextStyle(),
        selectedLabelStyle: body5BTextStyle(color: ColorConstants.primary[500]),
        iconSize: 24.w,
      ),
    );
  }
}
