// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gym_app/widgets/custom_drop_down.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';

import 'controller/find_a_workout_plan_controller.dart';



class FindAWorkoutPlanScreen extends StatefulWidget {
  const FindAWorkoutPlanScreen({super.key});

  @override
  State<FindAWorkoutPlanScreen> createState() => _FindAWorkoutPlanScreenState();
}

class _FindAWorkoutPlanScreenState extends State<FindAWorkoutPlanScreen> {
 FindAWorkoutPlanController controller = Get.put(FindAWorkoutPlanController());
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
           title: AppbarTitle(
               text: "msg_find_a_workout_plan".tr.toUpperCase()),
           styleType: Style.bgFill),
       body: SafeArea(
         child: Container(
             width: double.maxFinite,
             padding: getPadding(left: 20, top: 27, right: 20, bottom: 27),
             child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                  GestureDetector(
                      onTap: () {
                       onTapColumnlabel();
                      },
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           Text("lbl_choose_goal".tr,
                               style: theme.textTheme.bodyLarge),
                           CustomDropDown(
                               icon: Container(
                                   margin: getMargin(left: 30, right: 16),
                                   child: CustomImageView(
                                       svgPath:
                                       ImageConstant.imgArrowdown)),
                               margin: getMargin(top: 5),
                               hintText: "lbl_any".tr,
                               hintStyle:
                               CustomTextStyles.bodyLargeGray600,
                               items: controller.findAWorkoutPlanModelObj
                                   .value.dropdownItemList.value,
                               onChanged: (value) {
                                controller.onSelected(value);
                               })
                          ])),
                  GestureDetector(
                      onTap: () {
                       onTapColumnlabelone();
                      },
                      child: Padding(
                          padding: getPadding(top: 26),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                               Text("lbl_choose_level".tr,
                                   style: theme.textTheme.bodyLarge),
                               CustomDropDown(
                                   icon: Container(
                                       margin:
                                       getMargin(left: 30, right: 16),
                                       child: CustomImageView(
                                           svgPath: ImageConstant
                                               .imgArrowdown)),
                                   margin: getMargin(top: 6),
                                   hintText: "lbl_any".tr,
                                   hintStyle:
                                   CustomTextStyles.bodyLargeGray600,
                                   items: controller
                                       .findAWorkoutPlanModelObj
                                       .value
                                       .dropdownItemList1
                                       .value,
                                   onChanged: (value) {
                                    controller.onSelected1(value);
                                   })
                              ]))),
                  GestureDetector(
                      onTap: () {
                       onTapColumnlabeltwo();
                      },
                      child: Padding(
                          padding: getPadding(top: 26),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                               Text("msg_choose_no_of_weeks".tr,
                                   style: theme.textTheme.bodyLarge),
                               CustomDropDown(
                                   icon: Container(
                                       margin:
                                       getMargin(left: 30, right: 16),
                                       child: CustomImageView(
                                           svgPath: ImageConstant
                                               .imgArrowdown)),
                                   margin: getMargin(top: 6),
                                   hintText: "lbl_any".tr,
                                   hintStyle:
                                   CustomTextStyles.bodyLargeGray600,
                                   items: controller
                                       .findAWorkoutPlanModelObj
                                       .value
                                       .dropdownItemList2
                                       .value,
                                   onChanged: (value) {
                                    controller.onSelected2(value);
                                   })
                              ]))),
                  Padding(
                      padding: getPadding(top: 27),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           Text("msg_choose_days_per".tr,
                               style: theme.textTheme.bodyLarge),
                           CustomDropDown(
                               icon: Container(
                                   margin: getMargin(left: 30, right: 16),
                                   child: CustomImageView(
                                       svgPath:
                                       ImageConstant.imgArrowdown)),
                               margin: getMargin(top: 5),
                               hintText: "lbl_any".tr,
                               hintStyle:
                               CustomTextStyles.bodyLargeGray600,
                               items: controller.findAWorkoutPlanModelObj
                                   .value.dropdownItemList3.value,
                               onChanged: (value) {
                                controller.onSelected3(value);
                               })
                          ])),
                  CustomElevatedButton(
                      height: getVerticalSize(54),
                      text: "msg_create_workout_plan".tr.toUpperCase(),
                      margin: getMargin(top: 40, bottom: 5),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: CustomTextStyles
                          .bodyLargeUniformProExtraCondensedOnErrorContainer,
                      onTap: () {
                       onTapCreateworkout();
                      })
                 ])),
       )),
  );
 }


 onTapArrowleftone() {
  Get.back();
 }


 onTapColumnlabel() {
  Get.toNamed(
   AppRoutes.findAWorkoutPlanChooseGoalScreen,
  );
 }


 onTapColumnlabelone() {
  Get.toNamed(
   AppRoutes.chooseLevelPopupScreen,
  );
 }


 onTapColumnlabeltwo() {
  Get.toNamed(
   AppRoutes.findAWorkoutPlanChooseNumberWeeksScreen,
  );
 }


 onTapCreateworkout() {
  Get.toNamed(
   AppRoutes.findAWorkoutPlanOneScreen,
  );
 }
}






