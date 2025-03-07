import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/presentation/widgets/app_loading.dart';
import 'package:mobile/firebase_options.dart';
import 'package:mobile/routes/app_route.dart';
import 'package:mobile/utils/show_alert.dart';

class RegisterController extends GetxController {
  static RegisterController get i => Get.find<RegisterController>();
  final GlobalKey<FormState> formEmailKey = GlobalKey<FormState>();
  final GlobalKey<FormState> formPasswordKey = GlobalKey<FormState>();

  RxString tipeUsaha = "".obs;
  RxMap<String, TextEditingController> form = {
    "phone": TextEditingController(),
    "email": TextEditingController(),
    "password": TextEditingController(),
    "confirmPassword": TextEditingController(),
    "rekening": TextEditingController(),
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

  String? passwordValidator(String? e) {
    if (e == null || e.isEmpty) {
      return "Password tidak boleh kosong";
    }
    if (e.length < 8) {
      return "Password harus memiliki minimal 8 karakter";
    }
    if (!RegExp(r'[0-9]').hasMatch(e)) {
      return "Password harus mengandung setidaknya 1 angka";
    }
    if (!RegExp(r'[A-Z]').hasMatch(e)) {
      return "Password harus mengandung setidaknya 1 huruf kapital";
    }
    if (!RegExp(r'[#@\$_-]').hasMatch(e)) {
      return "Password harus mengandung setidaknya 1 karakter spesial (#, @, \$, _, -)";
    }
    return null;
  }

  String? confirmPasswordValidator(String? confirmPassword) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return "Konfirmasi password tidak boleh kosong";
    }

    if (confirmPassword != form['password']!.text) {
      return "Konfirmasi password harus sama dengan password";
    }
    return null;
  }

  RxBool isLoading = false.obs;

  void register() async {
    if (formPasswordKey.currentState!.validate()) {
      try {
        showLoadingDialog(Get.context!, isLoading);
        await auth.createUserWithEmailAndPassword(
          email: form['email']!.text.trim(),
          password: form['password']!.text,
        );
        await closeLoading(isLoading);

        Get.toNamed(AppRoute.registerSuccess);
      } catch (err) {
        await closeLoading(isLoading);
        showAlert(err.toString());
      }
    }
  }
}
