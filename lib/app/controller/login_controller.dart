import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get i => Get.find<LoginController>();

  RxMap<String, TextEditingController> form = {
    "phone": TextEditingController(),
    "password": TextEditingController(),
  }.obs;
}
