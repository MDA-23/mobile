import 'package:get/get.dart';
import 'package:mobile/app/controller/global_controller.dart';
import 'package:mobile/app/models/cashflow/cashflow_model.dart';
import 'package:mobile/app/repository/cashflow_repo.dart';
import 'package:mobile/app/repository/profile_repo.dart';

class HomeController extends GetxController {
  static HomeController get i => Get.find<HomeController>();

  Rxn<CashflowModel> cashflow = Rxn<CashflowModel>();

  void getProfileData() async {
    try {
      var data = await ProfileRepo.profile();
      GlobalController.i.profile.value = data;
    } catch (_) {}
  }

  void getCashflowData() async {
    try {
      var data = await CashflowRepo.all();
      cashflow.value = data;
    } catch (_) {}
  }

  @override
  void onInit() {
    super.onInit();
    getProfileData();
    getCashflowData();
  }
}
