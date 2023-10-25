import 'package:get/get.dart';

import '../../models/key_value_model.dart';

class VirtualCollectInfoController extends GetxController {
  VirtualCollectInfoController();

  _initData() {
    update(["virtual-collect-info"]);
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
