import 'package:flutter/material.dart' hide SearchController;
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image_2.dart';
import 'package:gym_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:gym_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';

import 'controller/search_controller.dart';

class SearchScreen extends GetWidget<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        appBar: CustomAppBar(
            height: getVerticalSize(71),
            title: Container(
                margin: getMargin(left: 20),
                padding:
                    getPadding(left: 16, top: 14, right: 16, bottom: 14),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppbarImage2(
                          svgPath: ImageConstant.imgGlobe,
                          margin: getMargin(bottom: 2)),
                      AppbarSubtitle1(
                          text: "lbl_search".tr,
                          margin: getMargin(
                              left: 12, top: 2, right: 196, bottom: 3))
                    ])),
            actions: [
              AppbarSubtitle(
                  text: "lbl_cancel".tr,
                  margin:
                      getMargin(left: 16, top: 17, right: 20, bottom: 18),
                  onTap: () {
                    onTapCancel();
                  })
            ],
            styleType: Style.bgFill_1),
        body: SafeArea(
          child: Container(
              width: double.maxFinite,
              padding: getPadding(left: 20, top: 26, right: 20, bottom: 26),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("lbl_recent_search".tr.toUpperCase(),
                              style: theme.textTheme.titleLarge),
                          Padding(
                              padding: getPadding(top: 4),
                              child: Text("lbl_clear_all".tr,
                                  style: CustomTextStyles.bodyLargeGray600))
                        ]),
                    Padding(
                        padding: getPadding(top: 22),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: getPadding(top: 3),
                                  child: Text("lbl_gym_exercise2".tr,
                                      style: theme.textTheme.bodyLarge)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgClose,
                                  height: getSize(24),
                                  width: getSize(24))
                            ])),
                    Padding(
                        padding: getPadding(top: 16),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: getPadding(top: 2, bottom: 1),
                                  child: Text("lbl_exercise2".tr,
                                      style: theme.textTheme.bodyLarge)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgClose,
                                  height: getSize(24),
                                  width: getSize(24))
                            ])),
                    Padding(
                        padding: getPadding(top: 17),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: getPadding(top: 3),
                                  child: Text("lbl_workout_plans".tr,
                                      style: theme.textTheme.bodyLarge)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgClose,
                                  height: getSize(24),
                                  width: getSize(24))
                            ])),
                    Padding(
                        padding: getPadding(top: 17, bottom: 5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: getPadding(top: 3),
                                  child: Text("lbl_health_tips".tr,
                                      style: theme.textTheme.bodyLarge)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgClose,
                                  height: getSize(24),
                                  width: getSize(24))
                            ]))
                  ])),
        ));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the homeContainerScreen.
  onTapCancel() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
