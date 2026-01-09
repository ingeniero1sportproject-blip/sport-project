// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_image_3.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';

import '../../widgets/custom_icon_button.dart';
import '../health_tips_screen/controller/health_tips_controller.dart';
import 'controller/health_tips_details_controller.dart';



// ignore: must_be_immutable
class HealthTipsDetailsScreen extends StatefulWidget {
   HealthTipsDetailsScreen({super.key,});



  @override
  State<HealthTipsDetailsScreen> createState() => _HealthTipsDetailsScreenState();
}

class _HealthTipsDetailsScreenState extends State<HealthTipsDetailsScreen> {
  HealthTipsController healthTipsController = Get.put(HealthTipsController());
 HealthTipsDetailsController healthTipsDetailsController = Get.put(HealthTipsDetailsController());
 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return Scaffold(
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
          title: AppbarTitle(text: "lbl_detail".tr.toUpperCase()),
          actions: [
           AppbarImage3(
               svgPath: ImageConstant.imgIcshare,
               margin:
               getMargin(left: 20, top: 26, right: 20, bottom: 26))
          ],
          styleType: Style.bgFill),
      body: GetBuilder<HealthTipsController>(
        init: HealthTipsController(),
        builder:(controller) =>  SafeArea(
          child: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(healthTipsDetailsController.currentTips!.image!),fit: BoxFit.fill),
                  ),


                          child: Stack(
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 19,
                                  bottom: 17,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      healthTipsDetailsController.currentTips!.title!.toUpperCase(),
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 4,right: 125,
                                      ),
                                      child: Container(

                                        width: double.infinity,
                                        child: Text(
                                            healthTipsDetailsController.currentTips!.subTitle!.toUpperCase(),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.titleLarge!.copyWith(
                                            height: 1.59,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 79,
                                      ),
                                      child:  Row(
                                        children: [

                                          Container(
                                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(16),),
                                                color: appTheme.whiteColor.withOpacity(0.14)
                                            ),
                                            child: Padding(
                                              padding: getPadding(top: 4,bottom: 4,left: 8,right: 8),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: getMargin(
                                                      right: 4,
                                                    ),
                                                    child: CustomImageView(
                                                      svgPath: ImageConstant.imgClock,
                                                    ),
                                                  ),
                                                  Text(healthTipsDetailsController.currentTips!.time!,style: CustomTextStyles.bodyMediumSfproDisplay)
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: getHorizontalSize(8),),
                                          Container(
                                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(16),),
                                                color: appTheme.whiteColor.withOpacity(0.14)),
                                            child: Padding(
                                              padding: getPadding(top: 4,bottom: 4,left: 8,right: 8),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: getMargin(
                                                      right: 4,
                                                    ),
                                                    child: CustomImageView(
                                                      svgPath: ImageConstant.imgIcFire,
                                                    ),
                                                  ),

                                                  Text(healthTipsDetailsController.currentTips!.kcl!,style: CustomTextStyles.bodyMediumSfproDisplay)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              healthTipsDetailsController.currentTips!.isPro!?CustomIconButton(
                                height: getSize(24),
                                width: getSize(24),
                                margin: getMargin(
                                    right: 8,
                                    top: 8
                                ),
                                padding: getPadding(
                                  all: 4,
                                ),
                                decoration: IconButtonStyleHelper.fillOnPrimaryContainerTL12.copyWith(
                                    color: appTheme.whiteColor.withOpacity(0.20)
                                ),
                                alignment: Alignment.topRight,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgPremiumquality,
                                ),
                              ):SizedBox(),
                            ],
                          ),
                        ),
                       Padding(
                         padding: getPadding(left: 20,right: 20,top: 16),
                         child: Container(
                           width: double.infinity,
                             decoration: AppDecoration.fillOnPrimary.copyWith(
                                 borderRadius: BorderRadiusStyle.roundedBorder16),
                             child: Padding(
                               padding: getPadding(top: 8,bottom: 8,left: 16,right: 16),
                               child: Row(
                                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisSize: MainAxisSize.min,
                                   children: [
                                    Expanded(
                                      child: Container(
                                          child: Text(
                                              healthTipsDetailsController.currentTips!.subTitle!
                                                  .toUpperCase(),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme.textTheme.titleLarge!
                                                  .copyWith(height: 1.59))),
                                    ),
            SizedBox(width: getHorizontalSize(80),),
                                    CustomImageView(
                                      onTap: (){
                                        controller.setFavourite(healthTipsDetailsController.currentTips!);
                                      },
                                      color: healthTipsDetailsController.currentTips!.isFavourite!?appTheme.buttonColor:appTheme.whiteColor,
                                        svgPath: ImageConstant.imgComputer,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(top: 19, bottom: 19))
                                   ]),
                             )),
                       ),
                       Container(
                           width: getHorizontalSize(364),
                           margin: getMargin(left: 20, top: 18, right: 29),
                           child: Text("msg_wellness_is_commonly2".tr,
                               maxLines: 6,
                               overflow: TextOverflow.ellipsis,
                               style: theme.textTheme.bodyLarge!
                                   .copyWith(height: 1.56))),
                       Align(
                           alignment: Alignment.centerLeft,
                           child: Container(
                               width: getHorizontalSize(328),
                               margin: getMargin(left: 20, top: 13, right: 65),
                               child: Text("msg_the_national_wellness".tr,
                                   maxLines: 3,
                                   overflow: TextOverflow.ellipsis,
                                   style: theme.textTheme.bodyLarge!
                                       .copyWith(height: 1.56)))),
                       Container(
                           width: getHorizontalSize(369),
                           margin: getMargin(left: 20, top: 10, right: 24),
                           child: Text("msg_there_are_four_pillars".tr,
                               maxLines: 5,
                               overflow: TextOverflow.ellipsis,
                               style: theme.textTheme.bodyLarge!
                                   .copyWith(height: 1.56))),
                       Container(
                           width: getHorizontalSize(372),
                           margin: getMargin(left: 20, top: 13, right: 20),
                           child: Text("msg_experts_widely_consider".tr,
                               maxLines: 2,
                               overflow: TextOverflow.ellipsis,
                               style: theme.textTheme.bodyLarge!
                                   .copyWith(height: 1.56)))
                      ]))),
        ),
      ));
 }

 onTapArrowleftone() {
  Get.back();
 }
}




