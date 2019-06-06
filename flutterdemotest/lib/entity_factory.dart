import 'package:flutterdemotest/storesmodel_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "StoresmodelEntity") {
      return StoresmodelEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}