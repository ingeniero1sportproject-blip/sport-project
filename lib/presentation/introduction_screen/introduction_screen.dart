// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';

import 'controller/introduction_controller.dart';




class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
 IntroductionController controller = Get.put(IntroductionController());
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
         title: AppbarTitle(text: "lbl_introduction".tr.toUpperCase()),
         styleType: Style.bgFill),
     body:SafeArea(

       child: Container(
           width: double.maxFinite,
           padding: getPadding(left: 20, top: 19, right: 20, bottom: 19),
           child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                Text("msg_complate_fat_destroyer".tr.toUpperCase(),
                    style: theme.textTheme.titleLarge),
                Container(
                    width: getHorizontalSize(374),
                    margin: getMargin(top: 21),
                    padding: getPadding(
                        left: 16, top: 18, right: 16, bottom: 18),
                    decoration: AppDecoration.fillOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                         Text("lbl_description".tr,
                             style: theme.textTheme.bodyLarge),
                         Container(
                             width: getHorizontalSize(317),
                             margin: getMargin(top: 11, right: 24),
                             child: Text(
                                 "msg_there_are_many_variations3".tr,
                                 maxLines: 3,
                                 overflow: TextOverflow.ellipsis,
                                 style: CustomTextStyles.bodyLargeGray600
                                     .copyWith(height: 1.56)))
                        ])),
                Container(
                    width: getHorizontalSize(374),
                    margin: getMargin(top: 16),
                    padding: getPadding(
                        left: 16, top: 18, right: 16, bottom: 18),
                    decoration: AppDecoration.fillOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                         Text("lbl_duration".tr,
                             style: theme.textTheme.bodyLarge),
                         Padding(
                             padding: getPadding(top: 12),
                             child: Text("lbl_12_weeks".tr,
                                 style:
                                 CustomTextStyles.bodyLargeGray600))
                        ])),
                Container(
                    width: getHorizontalSize(374),
                    margin: getMargin(top: 16),
                    padding: getPadding(
                        left: 16, top: 18, right: 16, bottom: 18),
                    decoration: AppDecoration.fillOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                         Text("lbl_goal".tr,
                             style: theme.textTheme.bodyLarge),
                         Padding(
                             padding: getPadding(top: 13),
                             child: Text("lbl_fat_loss2".tr,
                                 style:
                                 CustomTextStyles.bodyLargeGray600))
                        ])),
                Container(
                    width: getHorizontalSize(374),
                    margin: getMargin(top: 16),
                    padding: getPadding(
                        left: 16, top: 17, right: 16, bottom: 17),
                    decoration: AppDecoration.fillOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Padding(
                             padding: getPadding(top: 2),
                             child: Text("lbl_training_level".tr,
                                 style: theme.textTheme.bodyLarge)),
                         Padding(
                             padding: getPadding(top: 13),
                             child: Text("lbl_begginer".tr,
                                 style:
                                 CustomTextStyles.bodyLargeGray600))
                        ])),
                Container(
                    width: getHorizontalSize(374),
                    margin: getMargin(top: 16, bottom: 5),
                    padding: getPadding(
                        left: 16, top: 18, right: 16, bottom: 18),
                    decoration: AppDecoration.fillOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Text("lbl_days_per_week".tr,
                             style: theme.textTheme.bodyLarge),
                         Padding(
                             padding: getPadding(top: 11),
                             child: Text("lbl_4".tr,
                                 style:
                                 CustomTextStyles.bodyLargeGray600))
                        ]))
               ])),
     ),
    ),
  );
 }


 onTapArrowleftone() {
  Get.back();
 }
}




