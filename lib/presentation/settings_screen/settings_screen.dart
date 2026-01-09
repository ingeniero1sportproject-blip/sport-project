// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';

import 'controller/settings_controller.dart';

class SettingsScreen extends GetWidget<SettingsController> {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
     onWillPop: () async{
      Get.back();
       return true;
     },
      child: Scaffold(
          backgroundColor: theme.colorScheme.onErrorContainer,
          appBar: CustomAppBar(
              leadingWidth: getHorizontalSize(44),
              leading: AppbarImage(
                  svgPath: ImageConstant.imgArrowleft,
                  margin: getMargin(left: 20, top: 26, bottom: 26),
                  onTap: () {
                    onTapArrowleftone();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_settings2".tr.toUpperCase()),
              styleType: Style.bgFill),
          body: SafeArea(
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 24, right: 20, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoutes.aboutUsScreen);
                        },
                        child: Container(
                            padding: getPadding(all: 8),
                            decoration: AppDecoration.fillOnPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder16),
                            child: Row(children: [
                              Container(
                                  height: getSize(40),
                                  width: getSize(40),
                                  padding: getPadding(all: 8),
                                  decoration: AppDecoration.fillPrimaryContainer
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder20),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgWarning,
                                      height: getSize(24),
                                      width: getSize(24),
                                      alignment: Alignment.center)),
                              Padding(
                                  padding:
                                      getPadding(left: 12, top: 9, bottom: 10),
                                  child: Text("lbl_about_us".tr,
                                      style: theme.textTheme.bodyLarge)),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: getSize(24),
                                  width: getSize(24),
                                  margin: getMargin(top: 8, right: 8, bottom: 8))
                            ])),
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoutes.helpScreen);
                        },
                        child: Container(
                            margin: getMargin(top: 16),
                            padding: getPadding(all: 8),
                            decoration: AppDecoration.fillOnPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder16),
                            child: Row(children: [
                              Container(
                                  height: getSize(40),
                                  width: getSize(40),
                                  padding: getPadding(all: 8),
                                  decoration: AppDecoration.fillPrimaryContainer
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder20),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgQuestion,
                                      height: getSize(24),
                                      width: getSize(24),
                                      alignment: Alignment.center)),
                              Padding(
                                  padding:
                                      getPadding(left: 12, top: 11, bottom: 8),
                                  child: Text("lbl_help".tr,
                                      style: theme.textTheme.bodyLarge)),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: getSize(24),
                                  width: getSize(24),
                                  margin: getMargin(top: 8, right: 8, bottom: 8))
                            ])),
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoutes.feedbackScreen);
                        },
                        child: Container(
                            margin: getMargin(top: 16, bottom: 5),
                            padding: getPadding(all: 8),
                            decoration: AppDecoration.fillOnPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder16),
                            child: Row(children: [
                              Container(
                                  height: getSize(40),
                                  width: getSize(40),
                                  padding: getPadding(all: 8),
                                  decoration: AppDecoration.fillPrimaryContainer
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder20),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgUser,
                                      height: getSize(24),
                                      width: getSize(24),
                                      alignment: Alignment.center)),
                              Padding(
                                  padding:
                                      getPadding(left: 12, top: 9, bottom: 10),
                                  child: Text("lbl_feedback".tr,
                                      style: theme.textTheme.bodyLarge)),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: getSize(24),
                                  width: getSize(24),
                                  margin: getMargin(top: 8, right: 8, bottom: 8))
                            ])),
                      )
                    ])),
          )),
    );
  }


  onTapArrowleftone() {
    Get.back();
  }
}
