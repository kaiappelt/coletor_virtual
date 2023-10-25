import 'package:awesome_onboarding_screen/routers/names.dart';
import 'package:awesome_onboarding_screen/routers/pages.dart';
import 'package:awesome_onboarding_screen/services/global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/style/theme.dart';

void main() {
  appInit();
}

appInit() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put<GlobalService>(GlobalService());

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          GlobalService.to.isDarkModel == true ? AppTheme.dark : AppTheme.light,
      defaultTransition: Transition.fade,
      initialRoute: RouteName.onboarding,
      getPages: RoutePages.list,
    ),
  );
}
