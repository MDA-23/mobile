import 'package:mobile/app/models/common/base_model.dart';
import 'package:mobile/app/models/user/user_model.dart';

abstract class ModelFactory {
  factory ModelFactory.fromJson(Type type, Map<String, dynamic> json) {
    final strType = type.toString().replaceAll("?", "");

    if (strType == (BaseModel).toString()) {
      return BaseModel.fromJson(json);
    } else if (strType == (UserModel).toString()) {
      return UserModel.fromJson(json);
    }

    throw UnimplementedError();
  }
}
