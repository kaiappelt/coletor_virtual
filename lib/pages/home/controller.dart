import 'package:awesome_onboarding_screen/routers/names.dart';
import 'package:get/get.dart';

import '../../models/key_value_model.dart';

class HomeController extends GetxController {
  HomeController();

  List<KeyValueModel<String>> items = [];

  _initData() {
    items.addAll([
      KeyValueModel<String>("Coleta Normal", RouteName.collectDefault),
      KeyValueModel<String>("Coleta RFID", RouteName.collectRFID),
    ]);

    update(["home"]);
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
