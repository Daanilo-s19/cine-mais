import 'package:get/get.dart';
import 'package:getx_pattern/app/pages/onboarding/onboarding_page.dart';
import 'package:getx_pattern/app/pages/splash/splash_pages.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => SplashPage(),
    ),
    GetPage(
      name: Routes.ONBOARDING,
      page: () => OnboardingPage(),
    ),
    GetPage(
      name: Routes.MANAGECINEMA,
      page: () => OnboardingPage(),
    ),
  ];
}
