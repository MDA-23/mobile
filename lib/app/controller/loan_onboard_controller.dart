import 'dart:io';

import 'package:get/get.dart';

class LoanOnboardController extends GetxController {
  static LoanOnboardController get i => Get.find<LoanOnboardController>();

  RxBool sk = false.obs;

  Rxn<File> ktp = Rxn<File>();
  Rxn<File> kk = Rxn<File>();
  Rxn<File> suratNikah = Rxn<File>();
  Rxn<File> suratKeterangan = Rxn<File>();
  Rxn<File> npwp = Rxn<File>();
}
