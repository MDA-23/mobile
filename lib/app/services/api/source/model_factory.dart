import 'package:mobile/app/models/cashflow/cashflow_model.dart';
import 'package:mobile/app/models/common/base_model.dart';
import 'package:mobile/app/models/merchant/merchant_model.dart';
import 'package:mobile/app/models/profile/profile_model.dart';
import 'package:mobile/app/models/transaction/transaction_model.dart';
import 'package:mobile/app/models/user/user_model.dart';

abstract class ModelFactory {
  factory ModelFactory.fromJson(Type type, Map<String, dynamic> json) {
    final strType = type.toString().replaceAll("?", "");

    if (strType == (BaseModel).toString()) {
      return BaseModel.fromJson(json);
    } else if (strType == (UserModel).toString()) {
      return UserModel.fromJson(json);
    } else if (strType == (MerchantModel).toString()) {
      return MerchantModel.fromJson(json);
    } else if (strType == (ProfileModel).toString()) {
      return ProfileModel.fromJson(json);
    } else if (strType == (TransactionModel).toString()) {
      return TransactionModel.fromJson(json);
    } else if (strType == (CashflowModel).toString()) {
      print(json);
      return CashflowModel.fromJson(json);
    }

    throw UnimplementedError();
  }
}
