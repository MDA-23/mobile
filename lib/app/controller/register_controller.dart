import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  static RegisterController get i => Get.find<RegisterController>();

  RxString tipeUsaha = "".obs;
  RxMap<String, TextEditingController> form = {
    "phone": TextEditingController(),
  }.obs;
}
