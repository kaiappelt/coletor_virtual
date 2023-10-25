import 'package:get/get.dart';

import '../../models/key_value_model.dart';

class LoginController extends GetxController {
  LoginController();

  _initData() {
    update(["login"]);
  }

  void onTap() {}

  void onToRouter(KeyValueModel<String> item) {
    Get.toNamed(
      item.value,
      arguments: {
        "title": item.key,
      },
    );
  }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }
}
