import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    _getIsFirst();
  }

  _getIsFirst() async {
    bool isSignIn = await PrefUtils.getIsSignIn();
    bool isIntro = await PrefUtils. getIsIntro();
    
    Timer(const Duration(seconds:  3), () {
      debugPrint("is intro ====== $isIntro");
      debugPrint("isSignIn ====== $isSignIn");
      
      // Navegar según el estado
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