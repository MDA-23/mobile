import 'package:get/get.dart';
import 'package:mobile/app/controller/credit_score_controller.dart';

class CreditScoreBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreditScoreController>(() => CreditScoreController());
  }
}
