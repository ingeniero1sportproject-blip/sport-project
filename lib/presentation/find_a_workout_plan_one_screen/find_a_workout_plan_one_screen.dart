// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/choose_level_popup_screen/choose_level_popup_screen.dart';
import 'package:gym_app/presentation/find_a_workout_plan_goal_screen/find_a_workout_plan_choose_goal_screen.dart';
import 'package:gym_app/presentation/find_a_workout_plan_number_weeks_screen/find_a_workout_plan_number_weeks_screen.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';

import '../../chhose_number_of_week/number_of_hour_dialogue.dart';
import 'controller/find_a_workout_plan_one_controller.dart';

class FindAWorkoutPlanOneScreen extends StatefulWidget {
  const FindAWorkoutPlanOneScreen({super.key});

  @override
  State<FindAWorkoutPlanOneScreen> createState() =>
      _FindAWorkoutPlanOneScreenState();
}

class _FindAWorkoutPlanOneScreenState extends State<FindAWorkoutPlanOneScreen> {
  FindAWorkoutPlanOneController findAWorkoutPlanOneController = Get.put(FindAWorkoutPlanOneController());

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
          body: GetBuilder<FindAWorkoutPlanOneController>(
            init: FindAWorkoutPlanOneController(),
            builder: (controller) => SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(top: 20, bottom: 20),
                          decoration: AppDecoration.fillOnErrorContainer,
                          child: CustomAppBar(
                              height: getVerticalSize(33),
                              leadingWidth: getHorizontalSize(44),
                              leading: AppbarImage(
                                  svgPath: ImageConstant.imgArrowleft,
                                  margin:
                                      getMargin(left: 20, top: 5, bottom: 3),
                                  onTap: () {
                                    onTapArrowleftone();
                                  }),
                              centerTitle: true,
                              title: AppbarTitle(
                                  text: "msg_find_a_workout_plan"
                                      .tr
                                      .toUpperCase()))),
                      Container(
                          padding: getPadding(
                              left: 20, top: 27, right: 20, bottom: 27),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_choose_goal".tr,
                                    style: theme.textTheme.bodyLarge),
                                SizedBox(
                                  height: getVerticalSize(4),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                            insetPadding:
                                                const EdgeInsets.all(16),
                                            shape:
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                                20)),
                                            contentPadding:
                                                EdgeInsets.zero,
                                            content:
                                                const FindAWorkoutPlanChooseGoalScreen());
                                      },
                                    );
                                  },
                                  child: plan_option_button(controller.currentGoal),
                                ),
                                SizedBox(
                                  height: getVerticalSize(24),
                                ),

                                Text("lbl_choose_level".tr,
                                    style: theme.textTheme.bodyLarge),
                                SizedBox(
                                  height: getVerticalSize(4),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                            insetPadding:
                                            const EdgeInsets.all(16),
                                            shape:
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius
                                                    .circular(
                                                    20)),
                                            contentPadding:
                                            EdgeInsets.zero,
                                            content:
                                            const ChooseLevelPopupScreen());
                                      },
                                    );
                                  },
                                  child: plan_option_button(controller.currentLevel),
                                ),
                                SizedBox(
                                  height: getVerticalSize(24),
                                ),

                                Text("msg_choose_no_of_weeks".tr,
                                    style: theme.textTheme.bodyLarge),
                                SizedBox(
                                  height: getVerticalSize(4),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                            insetPadding:
                                            const EdgeInsets.all(16),
                                            shape:
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius
                                                    .circular(
                                                    20)),
                                            contentPadding:
                                            EdgeInsets.zero,
                                            content:
                                            const FindAWorkoutPlanChooseNumberWeeksScreen());
                                      },
                                    );
                                  },
                                  child: plan_option_button(controller.currentWeek.toString()),
                                ),
                                SizedBox(
                                  height: getVerticalSize(24),
                                ),

                                Text("msg_choose_days_per".tr,
                                    style: theme.textTheme.bodyLarge),
                                SizedBox(
                                  height: getVerticalSize(4),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                            insetPadding:
                                            const EdgeInsets.all(16),
                                            shape:
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius
                                                    .circular(
                                                    20)),
                                            contentPadding:
                                            EdgeInsets.zero,
                                            content:
                                            const NumberOfWeekDays());
                                      },
                                    );
                                  },
                                  child: plan_option_button(controller.currentWeekdays.toString()),
                                ),

                                CustomElevatedButton(
                                    onTap: () {
                                   Get.back();
                                    },
                                    height: getVerticalSize(54),
                                    text: "msg_create_workout_plan"
                                        .tr
                                        .toUpperCase(),
                                    margin: getMargin(top: 40, bottom: 5),
                                    buttonStyle:
                                        CustomButtonStyles.fillPrimary,
                                    buttonTextStyle: CustomTextStyles
                                        .bodyLargeUniformProExtraCondensedOnErrorContainer)
                              ]))
                    ])),
          )),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }


  // ignore: non_constant_identifier_names
  plan_option_button(text){
    return Container(
      decoration: AppDecoration
          .fillOnPrimary
          .copyWith(
          borderRadius:
          BorderRadiusStyle
              .roundedBorder16),
      child: Padding(
        padding: getPadding(all: 16),
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment
              .spaceBetween,
          children: [
            Text(
             text,
              style: CustomTextStyles
                  .bodyLargeOnError,
            ),
            Container(
                margin: getMargin(
                    left: 0, right: 0),
                child: CustomImageView(
                    svgPath: ImageConstant
                        .imgArrowdown)),
          ],
        ),
      ),
    );
  }
}
