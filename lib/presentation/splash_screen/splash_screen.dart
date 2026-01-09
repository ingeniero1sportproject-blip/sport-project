import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'controller/splash_controller.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 SplashController splashController = Get.put(SplashController());
 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return Scaffold(
      backgroundColor: theme.colorScheme.onErrorContainer,
      body: SizedBox(
          width: double.maxFinite,
          child: CustomImageView(
              svgPath: ImageConstant.imgGroup,
              height: getVerticalSize(118),
              width: getHorizontalSize(145),
              alignment: Alignment.center,
              margin: getMargin(bottom: 5),
              onTap: () {
               onTapImgImage();
              })));
 }


 onTapImgImage() {
  Get.toNamed(
   AppRoutes.onboardingOneScreen,
  );
 }
}


