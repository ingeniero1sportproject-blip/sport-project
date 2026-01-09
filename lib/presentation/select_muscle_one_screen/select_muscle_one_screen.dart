// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_image_3.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';
import 'package:gym_app/widgets/custom_icon_button.dart';

import 'controller/select_muscle_one_controller.dart';



class SelectMuscleOneScreen extends StatefulWidget {
  const SelectMuscleOneScreen({super.key});

  @override
  State<SelectMuscleOneScreen> createState() => _SelectMuscleOneScreenState();
}

class _SelectMuscleOneScreenState extends State<SelectMuscleOneScreen> {
  SelectMuscleOneController controller = Get.put(SelectMuscleOneController());
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
              title: AppbarTitle(text: "lbl_sets_and_reps".tr.toUpperCase()),
              actions: [
                AppbarImage3(
                    svgPath: ImageConstant.imgPlus,
                    margin:
                    getMargin(left: 20, top: 26, right: 20, bottom: 26),
                    onTap: () {
                      onTapPlusone();
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
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Container(
                                    margin: getMargin(right: 8),
                                    padding: getPadding(all: 8),
                                    decoration: AppDecoration.fillOnPrimary
                                        .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .roundedBorder16),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMaleathletewo1,
                                              height: getVerticalSize(167),
                                              width: getHorizontalSize(163),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(16))),
                                          Padding(
                                              padding:
                                              getPadding(top: 7, bottom: 1),
                                              child: Text(
                                                  "lbl_chest".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleLarge))
                                        ]))),
                            Expanded(
                                child: Container(
                                    margin: getMargin(left: 8),
                                    padding: getPadding(all: 8),
                                    decoration: AppDecoration.fillOnPrimary
                                        .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .roundedBorder16),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              height: getVerticalSize(167),
                                              width: getHorizontalSize(163),
                                              child: Stack(
                                                  alignment: Alignment.topRight,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgMaleathletewo2,
                                                        height: getVerticalSize(
                                                            167),
                                                        width:
                                                        getHorizontalSize(
                                                            163),
                                                        radius: BorderRadius
                                                            .circular(
                                                            getHorizontalSize(
                                                                16)),
                                                        alignment:
                                                        Alignment.center),
                                                    CustomIconButton(
                                                        height: getSize(24),
                                                        width: getSize(24),
                                                        margin: getMargin(
                                                            top: 8, right: 8),
                                                        padding:
                                                        getPadding(all: 4),
                                                        alignment:
                                                        Alignment.topRight,
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgPremiumquality))
                                                  ])),
                                          Padding(
                                              padding:
                                              getPadding(top: 7, bottom: 1),
                                              child: Text(
                                                  "lbl_legs".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleLarge))
                                        ])))
                          ]),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_sets".tr.toUpperCase(),
                                    style: theme.textTheme.titleLarge),
                                Text("lbl_reps".tr.toUpperCase(),
                                    style: theme.textTheme.titleLarge)
                              ])),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 9, bottom: 10),
                                    child: Text("lbl_set_1".tr,
                                        style: theme.textTheme.bodyLarge)),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomIconButton(
                                          height: getSize(40),
                                          width: getSize(40),
                                          padding: getPadding(all: 8),
                                          decoration: IconButtonStyleHelper
                                              .fillOnPrimary,
                                          child: CustomImageView(
                                              svgPath:
                                              ImageConstant.imgIcminus)),
                                      Padding(
                                          padding: getPadding(
                                              left: 16, top: 7, bottom: 9),
                                          child: Text("lbl_01".tr.toUpperCase(),
                                              style: CustomTextStyles
                                                  .titleLarge20)),
                                      CustomIconButton(
                                          height: getSize(40),
                                          width: getSize(40),
                                          margin: getMargin(left: 16),
                                          padding: getPadding(all: 8),
                                          decoration: IconButtonStyleHelper
                                              .fillOnPrimary,
                                          child: CustomImageView(
                                              svgPath: ImageConstant.imgPlus))
                                    ])
                              ])),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 9, bottom: 10),
                                    child: Text("lbl_set_2".tr,
                                        style: theme.textTheme.bodyLarge)),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomIconButton(
                                          height: getSize(40),
                                          width: getSize(40),
                                          padding: getPadding(all: 8),
                                          decoration: IconButtonStyleHelper
                                              .fillOnPrimary,
                                          child: CustomImageView(
                                              svgPath:
                                              ImageConstant.imgIcminus)),
                                      Padding(
                                          padding: getPadding(
                                              left: 16, top: 7, bottom: 9),
                                          child: Text("lbl_01".tr.toUpperCase(),
                                              style: CustomTextStyles
                                                  .titleLarge20)),
                                      CustomIconButton(
                                          height: getSize(40),
                                          width: getSize(40),
                                          margin: getMargin(left: 16),
                                          padding: getPadding(all: 8),
                                          decoration: IconButtonStyleHelper
                                              .fillOnPrimary,
                                          child: CustomImageView(
                                              svgPath: ImageConstant.imgPlus))
                                    ])
                              ])),
                      Padding(
                          padding: getPadding(top: 24, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 9, bottom: 10),
                                    child: Text("lbl_set_3".tr,
                                        style: theme.textTheme.bodyLarge)),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomIconButton(
                                          height: getSize(40),
                                          width: getSize(40),
                                          padding: getPadding(all: 8),
                                          decoration: IconButtonStyleHelper
                                              .fillOnPrimary,
                                          child: CustomImageView(
                                              svgPath:
                                              ImageConstant.imgIcminus)),
                                      Padding(
                                          padding: getPadding(
                                              left: 16, top: 7, bottom: 9),
                                          child: Text("lbl_01".tr.toUpperCase(),
                                              style: CustomTextStyles
                                                  .titleLarge20)),
                                      CustomIconButton(
                                          height: getSize(40),
                                          width: getSize(40),
                                          margin: getMargin(left: 16),
                                          padding: getPadding(all: 8),
                                          decoration: IconButtonStyleHelper
                                              .fillOnPrimary,
                                          child: CustomImageView(
                                              svgPath: ImageConstant.imgPlus))
                                    ])
                              ]))
                    ])),
          ),
          bottomNavigationBar: Container(
              margin: getMargin(left: 20, right: 20, bottom: 24),
              decoration: AppDecoration.fillOnErrorContainer,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // CustomOutlinedButton(
                    //     width: getHorizontalSize(179),
                    //     text: "lbl_previous".tr.toUpperCase(),
                    //     onTap: () {
                    //       onTapPrevious();
                    //     }),
                    // CustomElevatedButton(
                    //     height: getVerticalSize(54),
                    //     width: getHorizontalSize(179),
                    //     text: "lbl_save".tr.toUpperCase(),
                    //     margin: getMargin(left: 16),
                    //     buttonStyle: CustomButtonStyles.fillPrimary,
                    //     buttonTextStyle: CustomTextStyles
                    //         .bodyLargeUniformProExtraCondensedOnErrorContainer,
                    //     onTap: () {
                    //       onTapSave();
                    //     })

                    Expanded(
                      child: CustomElevatedButton(
                          height: getVerticalSize(54),

                          text: "lbl_previous".tr.toUpperCase(),
                          margin: getMargin(left: 16),
                          buttonStyle: CustomButtonStyles.primaryborderstyle,
                          buttonTextStyle: CustomTextStyles
                              .bodyLargeUniformProExtraCondensedButtonColor,
                          onTap: () {
                            Get.back();
                            // onTapNext();
                          }),
                    ),

                    Expanded(
                      child: CustomElevatedButton(
                          height: getVerticalSize(54),
                          text: "Save".toUpperCase(),
                          margin: getMargin(left: 16),
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle: CustomTextStyles
                              .bodyLargeUniformProExtraCondensedOnErrorContainer,
                          onTap: () {
                            onTapSave();
                          }),
                    )
                  ]))),
    );
  }


  onTapArrowleftone() {
    Get.back();
  }


  onTapPlusone() {
    Get.toNamed(
      AppRoutes.selectMuscleScreen,
    );
  }


  onTapPrevious() {
    Get.toNamed(
      AppRoutes.setsAndRepsScreen,
    );
  }

  onTapSave() {
    Get.back();
    Get.back();
    Get.back();
    Get.back();
  }
}





