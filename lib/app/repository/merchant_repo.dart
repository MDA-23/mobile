import 'package:mobile/app/models/merchant/merchant_model.dart';
import 'package:mobile/app/services/api/fetch_data.dart';
import 'package:mobile/app/services/api/request_method.dart';

class MerchantRepo {
  static Future<MerchantModel> get() async {
    try {
      final res = await fetchData<MerchantModel>(
        url: "/api/merchant",
        method: RequestMethod.GET,
      );

      return res.data!;
    } catch (_) {
      rethrow;
    }
  }
}
