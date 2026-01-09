import 'dart:async';

import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/splash_screen/models/splash_model.dart';

/// A controller class for the SplashScreen.
///
/// This class manages the state of the SplashScreen, including the
/// current splashModelObj
class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    _getIsFirst();
    }


  _getIsFirst() async {
    bool isSignIn = await PrefUtils.getIsSignIn();
    bool isIntro = await PrefUtils.getIsIntro();
    Timer(const Duration(seconds: 3), () {
      print("is intro ====== $isIntro");
      print("isSignIn ====== $isSignIn");
      if (isIntro) {
        Get.toNamed(AppRoutes.onboardingOneScreen);
      } else if (isSignIn) {
        Get.toNamed(AppRoutes.firebaseLoginScreen);
      } else {
        Get.toNamed(AppRoutes.homeContainerScreen);
      }
    });
  }
}
