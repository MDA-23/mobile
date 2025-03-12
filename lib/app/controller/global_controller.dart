import 'package:get/get.dart';
import 'package:mobile/app/models/profile/profile_model.dart';

class GlobalController extends GetxController {
  static GlobalController get i => Get.find<GlobalController>();

  Rxn<ProfileModel> profile = Rxn<ProfileModel>();
}
