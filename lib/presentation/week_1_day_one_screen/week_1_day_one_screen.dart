// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gym_app/widgets/custom_icon_button.dart';

import '../detail_gym_page/models/detail_gym_model.dart';
import '../full_workout_plan_screen/controller/full_workout_plan_controller.dart';
import 'controller/week_1_day_one_controller.dart';


class Week1DayOneScreen extends StatefulWidget {
  const Week1DayOneScreen({super.key});

  @override
  State<Week1DayOneScreen> createState() => _Week1DayOneScreenState();
}

class _Week1DayOneScreenState extends State<Week1DayOneScreen> {
  FullWorkoutPlanController fullWorkoutPlanController  = Get.put(FullWorkoutPlanController());
  Week1DayOneController week1DayOneController = Get.put(Week1DayOneController());
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
              title: AppbarTitle(text: "Week 1  day 1".tr.toUpperCase()),
              styleType: Style.bgFill),
          body: SafeArea(
            child: GetBuilder<Week1DayOneController>(
              init: Week1DayOneController(),
              builder:(controller) =>  Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                  child: ListView.builder(
                    primary: false,
                      shrinkWrap: true,
                    itemCount: controller.week1stdata.length,
                    itemBuilder: (context, index) {
                      DetailModel data = controller.week1stdata[index];
                    return  animation_function(index, Padding(
                      padding: getPadding(top: 8,bottom: 8),
                      child: GestureDetector(
                        onTap: (){
                  
                          fullWorkoutPlanController.setCurrentWorkoutPlan(data);
                          Get.toNamed(
                            AppRoutes.fullWorkoutPlanScreen,
                          );
                        },
                        child: Container(
                            padding: getPadding(all: 8),
                            decoration: AppDecoration.fillOnPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder16),
                            child: Row(children: [
                              SizedBox(
                                  height: getSize(115),
                                  width: getSize(115),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                            imagePath: data.image,
                                            height: getSize(115),
                                            width: getSize(115),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(16)),
                                            alignment: Alignment.center),
                                        data.isPro!?CustomIconButton(
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(top: 8, right: 8),
                                            padding: getPadding(all: 4),
                                            alignment: Alignment.topRight,
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgPremiumquality)):SizedBox()
                                      ])),
                              Padding(
                                  padding:
                                  getPadding(left: 12, top: 6, bottom: 6),
                                  child: Container(
                                    width: getSize(210),
                  
                                    child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(data.title!.toUpperCase(),
                                            // style: CustomTextStyles.bodyLargeUniformProExtraCondensed
                                            style: CustomTextStyles.bodyMediumSfproDisplay18,
                                            maxLines: 1,
                                          ),
                                          Padding(
                                              padding: getPadding(top: 9),
                                              child: Text("Sets : ${data.sets}",
                                                  style: CustomTextStyles
                                                      .bodyLargeGray600)),
                                          Padding(
                                              padding: getPadding(top: 6),
                                              child: Text("Reps : ${data.reps}",
                                                  style: CustomTextStyles
                                                      .bodyLargeGray600)),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text("Rest : ${data.rest} Sec",
                                                  style: CustomTextStyles
                                                      .bodyLargeGray600))
                                        ]),
                                  )),
                              Spacer(),
                              CustomImageView(
                  onTap: () {
                    controller.setChekPosition(data);
                  },
                                  svgPath: data.isCheaked!?ImageConstant.imgCheakIconSelected:ImageConstant.imgCheakIconUnSelected,
                                  height: getSize(20),
                                  width: getSize(20),
                                  margin:
                                  getMargin(top: 48, right: 8, bottom: 47))
                            ])),
                      ),
                    ));
                  },)
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  // Column(
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     children: [
                  //       Container(
                  //           padding: getPadding(all: 8),
                  //           decoration: AppDecoration.fillOnPrimary.copyWith(
                  //               borderRadius: BorderRadiusStyle.roundedBorder16),
                  //           child: Row(children: [
                  //             SizedBox(
                  //                 height: getSize(115),
                  //                 width: getSize(115),
                  //                 child: Stack(
                  //                     alignment: Alignment.topRight,
                  //                     children: [
                  //                       CustomImageView(
                  //                           imagePath: ImageConstant
                  //                               .imgRectangle4391115x115,
                  //                           height: getSize(115),
                  //                           width: getSize(115),
                  //                           radius: BorderRadius.circular(
                  //                               getHorizontalSize(16)),
                  //                           alignment: Alignment.center),
                  //                       CustomIconButton(
                  //                           height: getSize(24),
                  //                           width: getSize(24),
                  //                           margin: getMargin(top: 8, right: 8),
                  //                           padding: getPadding(all: 4),
                  //                           alignment: Alignment.topRight,
                  //                           child: CustomImageView(
                  //                               svgPath: ImageConstant
                  //                                   .imgPremiumquality))
                  //                     ])),
                  //             Padding(
                  //                 padding:
                  //                 getPadding(left: 12, top: 6, bottom: 6),
                  //                 child: Column(
                  //                     crossAxisAlignment:
                  //                     CrossAxisAlignment.start,
                  //                     mainAxisAlignment: MainAxisAlignment.start,
                  //                     children: [
                  //                       Text("lbl_incline_press".tr.toUpperCase(),
                  //                           style: CustomTextStyles
                  //                               .bodyLargeUniformProExtraCondensed),
                  //                       Padding(
                  //                           padding: getPadding(top: 9),
                  //                           child: Text("lbl_sets_3".tr,
                  //                               style: CustomTextStyles
                  //                                   .bodyLargeGray600)),
                  //                       Padding(
                  //                           padding: getPadding(top: 6),
                  //                           child: Text("msg_reps_8_x_8_x_8".tr,
                  //                               style: CustomTextStyles
                  //                                   .bodyLargeGray600)),
                  //                       Padding(
                  //                           padding: getPadding(top: 3),
                  //                           child: Text("lbl_rest_45_sec".tr,
                  //                               style: CustomTextStyles
                  //                                   .bodyLargeGray600))
                  //                     ])),
                  //             Spacer(),
                  //             CustomImageView(
                  //                 svgPath: ImageConstant.imgFile,
                  //                 height: getSize(20),
                  //                 width: getSize(20),
                  //                 margin:
                  //                 getMargin(top: 48, right: 8, bottom: 47))
                  //           ])),
                  //       Card(
                  //           clipBehavior: Clip.antiAlias,
                  //           elevation: 0,
                  //           margin: getMargin(top: 16),
                  //           color: theme.colorScheme.onPrimary,
                  //           shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadiusStyle.roundedBorder16),
                  //           child: Container(
                  //               height: getVerticalSize(131),
                  //               width: getHorizontalSize(374),
                  //               padding: getPadding(all: 8),
                  //               decoration: AppDecoration.fillOnPrimary.copyWith(
                  //                   borderRadius:
                  //                   BorderRadiusStyle.roundedBorder16),
                  //               child:
                  //               Stack(alignment: Alignment.center, children: [
                  //                 Align(
                  //                     alignment: Alignment.centerRight,
                  //                     child: Padding(
                  //                         padding: getPadding(right: 80),
                  //                         child: Column(
                  //                             mainAxisSize: MainAxisSize.min,
                  //                             crossAxisAlignment:
                  //                             CrossAxisAlignment.start,
                  //                             mainAxisAlignment:
                  //                             MainAxisAlignment.start,
                  //                             children: [
                  //                               Text(
                  //                                   "msg_one_arm_dumbbell"
                  //                                       .tr
                  //                                       .toUpperCase(),
                  //                                   style: CustomTextStyles
                  //                                       .bodyLargeUniformProExtraCondensed),
                  //                               Padding(
                  //                                   padding: getPadding(top: 9),
                  //                                   child: Text("lbl_sets_3".tr,
                  //                                       style: CustomTextStyles
                  //                                           .bodyLargeGray600)),
                  //                               Padding(
                  //                                   padding: getPadding(top: 6),
                  //                                   child: Text(
                  //                                       "msg_reps_8_x_8_x_8".tr,
                  //                                       style: CustomTextStyles
                  //                                           .bodyLargeGray600)),
                  //                               Padding(
                  //                                   padding: getPadding(top: 3),
                  //                                   child: Text(
                  //                                       "lbl_rest_30_sec".tr,
                  //                                       style: CustomTextStyles
                  //                                           .bodyLargeGray600))
                  //                             ]))),
                  //                 // Align(
                  //                 //     alignment: Alignment.center,
                  //                 //     child: Obx(() => CustomCheckboxButton(
                  //                 //         alignment: Alignment.center,
                  //                 //         width: getHorizontalSize(350),
                  //                 //         value: controller.checkmark.value,
                  //                 //         isRightCheck: true,
                  //                 //         onChange: (value) {
                  //                 //           controller.checkmark.value = value;
                  //                 //         })))
                  //               ]))),
                  //       Container(
                  //           margin: getMargin(top: 16),
                  //           padding: getPadding(all: 8),
                  //           decoration: AppDecoration.fillOnPrimary.copyWith(
                  //               borderRadius: BorderRadiusStyle.roundedBorder16),
                  //           child: Row(children: [
                  //             SizedBox(
                  //                 height: getSize(115),
                  //                 width: getSize(115),
                  //                 child: Stack(
                  //                     alignment: Alignment.topRight,
                  //                     children: [
                  //                       CustomImageView(
                  //                           imagePath:
                  //                           ImageConstant.imgRectangle43914,
                  //                           height: getSize(115),
                  //                           width: getSize(115),
                  //                           radius: BorderRadius.circular(
                  //                               getHorizontalSize(16)),
                  //                           alignment: Alignment.center),
                  //                       CustomIconButton(
                  //                           height: getSize(24),
                  //                           width: getSize(24),
                  //                           margin: getMargin(top: 8, right: 8),
                  //                           padding: getPadding(all: 4),
                  //                           alignment: Alignment.topRight,
                  //                           child: CustomImageView(
                  //                               svgPath: ImageConstant
                  //                                   .imgPremiumquality))
                  //                     ])),
                  //             Padding(
                  //                 padding:
                  //                 getPadding(left: 12, top: 6, bottom: 6),
                  //                 child: Column(
                  //                     crossAxisAlignment:
                  //                     CrossAxisAlignment.start,
                  //                     mainAxisAlignment: MainAxisAlignment.start,
                  //                     children: [
                  //                       Text(
                  //                           "msg_front_seated_milatary"
                  //                               .tr
                  //                               .toUpperCase(),
                  //                           style: CustomTextStyles
                  //                               .bodyLargeUniformProExtraCondensed),
                  //                       Padding(
                  //                           padding: getPadding(top: 9),
                  //                           child: Text("lbl_sets_3".tr,
                  //                               style: CustomTextStyles
                  //                                   .bodyLargeGray600)),
                  //                       Padding(
                  //                           padding: getPadding(top: 6),
                  //                           child: Text("msg_reps_8_x_8_x_8".tr,
                  //                               style: CustomTextStyles
                  //                                   .bodyLargeGray600)),
                  //                       Padding(
                  //                           padding: getPadding(top: 3),
                  //                           child: Text("lbl_rest_48_sec".tr,
                  //                               style: CustomTextStyles
                  //                                   .bodyLargeGray600))
                  //                     ])),
                  //             CustomImageView(
                  //                 svgPath: ImageConstant.imgFile,
                  //                 height: getSize(20),
                  //                 width: getSize(20),
                  //                 margin:
                  //                 getMargin(left: 26, top: 48, bottom: 47))
                  //           ])),
                  //       Card(
                  //           clipBehavior: Clip.antiAlias,
                  //           elevation: 0,
                  //           margin: getMargin(top: 16, bottom: 8),
                  //           color: theme.colorScheme.onPrimary,
                  //           shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadiusStyle.roundedBorder16),
                  //           child: Container(
                  //               height: getVerticalSize(131),
                  //               width: getHorizontalSize(374),
                  //               padding: getPadding(all: 8),
                  //               decoration: AppDecoration.fillOnPrimary.copyWith(
                  //                   borderRadius:
                  //                   BorderRadiusStyle.roundedBorder16),
                  //               child:
                  //               Stack(alignment: Alignment.center, children: [
                  //                 Align(
                  //                     alignment: Alignment.center,
                  //                     child: Padding(
                  //                         padding:
                  //                         getPadding(left: 127, right: 122),
                  //                         child: Column(
                  //                             mainAxisSize: MainAxisSize.min,
                  //                             crossAxisAlignment:
                  //                             CrossAxisAlignment.start,
                  //                             mainAxisAlignment:
                  //                             MainAxisAlignment.start,
                  //                             children: [
                  //                               Text(
                  //                                   "msg_wide_grip_pull_up"
                  //                                       .tr
                  //                                       .toUpperCase(),
                  //                                   style: CustomTextStyles
                  //                                       .bodyLargeUniformProExtraCondensed),
                  //                               Padding(
                  //                                   padding: getPadding(top: 9),
                  //                                   child: Text("lbl_sets_3".tr,
                  //                                       style: CustomTextStyles
                  //                                           .bodyLargeGray600)),
                  //                               Padding(
                  //                                   padding: getPadding(top: 6),
                  //                                   child: Text(
                  //                                       "msg_reps_9_x_9_x_9".tr,
                  //                                       style: CustomTextStyles
                  //                                           .bodyLargeGray600)),
                  //                               Padding(
                  //                                   padding: getPadding(top: 3),
                  //                                   child: Text(
                  //                                       "lbl_rest_30_sec".tr,
                  //                                       style: CustomTextStyles
                  //                                           .bodyLargeGray600))
                  //                             ]))),
                  //                 // Align(
                  //                 //     alignment: Alignment.center,
                  //                 //     child: Obx(() => CustomCheckboxButton(
                  //                 //         alignment: Alignment.center,
                  //                 //         width: getHorizontalSize(350),
                  //                 //         value: controller.filefour.value,
                  //                 //         isRightCheck: true,
                  //                 //         onChange: (value) {
                  //                 //           controller.filefour.value = value;
                  //                 //         })))
                  //               ])))
                  //     ])
            ),
            ),
          ),
         ),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}










