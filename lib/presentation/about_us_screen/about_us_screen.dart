// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';

import 'controller/about_us_controller.dart';

class AboutUsScreen extends GetWidget<AboutUsController> {
  const AboutUsScreen({Key? key}) : super(key: key);

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
              title: AppbarTitle(text: "lbl_about_us".tr.toUpperCase()),
              styleType: Style.bgFill),
          body: SafeArea(
            child: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 16),
                    child: Padding(
                        padding: getPadding(left: 20, right: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle712,
                                  height: getVerticalSize(160),
                                  width: getHorizontalSize(374),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(16))),
                              Padding(
                                  padding: getPadding(top: 19),
                                  child: Text(
                                      "msg_the_life_in_fitness"
                                          .tr
                                          .toUpperCase(),
                                      style: theme.textTheme.titleLarge)),
                              Container(
                                  width: getHorizontalSize(366),
                                  margin: getMargin(top: 24, right: 7),
                                  child: Text("msg_lorem_ipsum_dolor".tr,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyLarge!
                                          .copyWith(height: 1.56))),
                              Container(
                                  width: getHorizontalSize(370),
                                  margin: getMargin(top: 11),
                                  child: Text("msg_amet_minim_mollit".tr,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyLarge!
                                          .copyWith(height: 1.56))),
                              Container(
                                  width: getHorizontalSize(344),
                                  margin: getMargin(top: 13, right: 29),
                                  child: Text("msg_in_a_laoreet_purus".tr,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyLarge!
                                          .copyWith(height: 1.56))),
                              Container(
                                  width: getHorizontalSize(368),
                                  margin: getMargin(top: 10, right: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "lbl_i".tr,
                                            style: theme.textTheme.bodyLarge),
                                        TextSpan(
                                            text: "msg_vorem_ipsum_dolor".tr,
                                            style: theme.textTheme.bodyLarge)
                                      ]),
                                      textAlign: TextAlign.left)),
                              Container(
                                  width: getHorizontalSize(352),
                                  margin: getMargin(top: 11, right: 21),
                                  child: Text("msg_amet_minim_mollit2".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyLarge!
                                          .copyWith(height: 1.56))),
                              Container(
                                  width: getHorizontalSize(368),
                                  margin: getMargin(top: 13, right: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "lbl_i".tr,
                                            style: theme.textTheme.bodyLarge),
                                        TextSpan(
                                            text: "msg_vorem_ipsum_dolor".tr,
                                            style: theme.textTheme.bodyLarge)
                                      ]),
                                      textAlign: TextAlign.left))
                            ])))),
          )),
    );
  }


  onTapArrowleftone() {
    Get.back();
  }
}
