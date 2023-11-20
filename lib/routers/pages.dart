import 'package:awesome_onboarding_screen/pages/onboarding/segundo_onboard_page.dart';
import 'package:awesome_onboarding_screen/pages/home/view.dart';
import 'package:awesome_onboarding_screen/pages/onboarding/onboard_page.dart';
import 'package:awesome_onboarding_screen/pages/select-layout/view.dart';
import 'package:get/get.dart';

import 'index.dart';

class RoutePages {
  static List<GetPage> list = [
    GetPage(
      name: RouteName.onboarding,
      page: () => Onboarding(),
    ),
    GetPage(
      name: RouteName.onboarding_two,
      page: () => OnboardingTwo(),
    ),
    
    GetPage(
      name: RouteName.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: RouteName.collectRFID,
      page: () => const SelectLayoutPage(),
    ),
    GetPage(
      name: RouteName.selectLayout,
      page: () => const SelectLayoutPage(),
    ),
  ];
}
