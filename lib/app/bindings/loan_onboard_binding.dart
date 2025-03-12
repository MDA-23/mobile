import 'package:get/get.dart';
import 'package:mobile/app/controller/loan_onboard_controller.dart';

class LoanOnboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoanOnboardController>(() => LoanOnboardController());
  }
}
