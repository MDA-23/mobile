import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/presentation/widgets/app_loading.dart';
import 'package:mobile/firebase_options.dart';
import 'package:mobile/routes/app_route.dart';
import 'package:mobile/utils/show_alert.dart';

class LoginController extends GetxController {
  static LoginController get i => Get.find<LoginController>();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RxMap<String, TextEditingController> form = {
    "email": TextEditingController(),
    "password": TextEditingController(),
  }.obs;

  String? emailValidator(e) {
    if (e == null || e!.isEmpty) {
      return "Email can't be empty";
    }

    if (!(e as String).isEmail) {
      return "Email invalid";
    }
    return null;
  }

  RxBool isLoading = false.obs;
  void login() async {
    if (formKey.currentState!.validate()) {
      try {
        showLoadingDialog(Get.context!, isLoading);
        final email = form['email']!.text.trim();
        final password = form['password']!.text.trim();

        await auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );

        await closeLoading(isLoading);
        Get.offAllNamed(AppRoute.home);
      } catch (error) {
        await closeLoading(isLoading);
        showAlert(error.toString());
      }
    }
  }
}
