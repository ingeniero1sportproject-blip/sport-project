// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_image_3.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gym_app/widgets/custom_icon_button.dart';

import 'controller/my_profile_controller.dart';





class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  MyProfileController controller = Get.put(MyProfileController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: ()async {
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
              title: AppbarTitle(text: "lbl_my_profile2".tr.toUpperCase()),
              actions: [
                AppbarImage3(
                    svgPath: ImageConstant.imgEdit,
                    margin:
                    getMargin(left: 20, top: 26, right: 20, bottom: 26),
                    onTap: () {
                      onTapEditone();
                    })
              ],
              styleType: Style.bgFill),
          body: SafeArea(
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getSize(80),
                          width: getSize(80),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgAvtar1),
                                  fit: BoxFit.cover)),
                          child: CustomIconButton(
                              height: getSize(32),
                              width: getSize(32),
                              padding: getPadding(all: 6),
                              decoration: IconButtonStyleHelper.fillPrimary,
                              alignment: Alignment.bottomRight,
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCamera))),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Text("lbl_john_abram".tr.toUpperCase(),
                              style: theme.textTheme.titleLarge)),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Text("msg_johnabram_gmail_com".tr,
                              style: theme.textTheme.bodyLarge)),
                      Container(
                          width: getHorizontalSize(374),
                          margin: getMargin(top: 33),
                          padding: getPadding(
                              left: 16, top: 10, right: 16, bottom: 10),
                          decoration: AppDecoration.fillOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_first_name".tr,
                                    style: CustomTextStyles.bodyLargeGray600),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Text("lbl_john".tr,
                                        style: theme.textTheme.bodyLarge))
                              ])),
                      Container(
                          width: getHorizontalSize(374),
                          margin: getMargin(top: 16),
                          padding: getPadding(
                              left: 16, top: 10, right: 16, bottom: 10),
                          decoration: AppDecoration.fillOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_last_name".tr,
                                    style: CustomTextStyles.bodyLargeGray600),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Text("lbl_abram".tr,
                                        style: theme.textTheme.bodyLarge))
                              ])),
                      Container(
                          width: getHorizontalSize(374),
                          margin: getMargin(top: 16, bottom: 5),
                          padding: getPadding(
                              left: 15, top: 9, right: 15, bottom: 9),
                          decoration: AppDecoration.fillOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_email_address".tr,
                                        style:
                                        CustomTextStyles.bodyLargeGray600)),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Text("msg_johnabram_gmail_com".tr,
                                        style: theme.textTheme.bodyLarge))
                              ]))
                    ])),
          )),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }


  onTapEditone() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }
}










