import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';

import '../find_a_workout_plan_one_screen/controller/find_a_workout_plan_one_controller.dart';
import 'controller/find_a_workout_weeks_controller.dart';
import 'models/find_a_workout_weeks_model.dart';

class FindAWorkoutPlanChooseNumberWeeksScreen extends StatefulWidget {
  const FindAWorkoutPlanChooseNumberWeeksScreen({super.key});

  @override
  State<FindAWorkoutPlanChooseNumberWeeksScreen> createState() =>
      _FindAWorkoutPlanChooseNumberWeeksScreenState();
}

class _FindAWorkoutPlanChooseNumberWeeksScreenState
    extends State<FindAWorkoutPlanChooseNumberWeeksScreen> {
  FindAWorkoutPlanChooseNumberWeeksController
      findAWorkoutPlanChooseNumberWeeksController =
      Get.put(FindAWorkoutPlanChooseNumberWeeksController());
  FindAWorkoutPlanOneController findAWorkoutPlanOneController =
      Get.put(FindAWorkoutPlanOneController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FindAWorkoutPlanChooseNumberWeeksController>(
        init: FindAWorkoutPlanChooseNumberWeeksController(),
        builder: (controller) => SizedBox(
              height: getSize(368),
              width: getSize(374),
              child: Padding(
                padding: getPadding(all: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // ignore: prefer_const_constructors
                        SizedBox(),
                        Text("msg_choose_number_weeks".tr.toUpperCase(),
                            style: theme.textTheme.titleLarge),
                        CustomImageView(
                            svgPath: ImageConstant.imgClose,
                            height: getSize(24),
                            width: getSize(24),
                            alignment: Alignment.topRight,
                            margin: getMargin(top: 3),
                            onTap: () {
                              Get.back();
// onTapImgCloseone();
                            })
                      ],
                    ),
                    Center(
                      child: ListView.builder(
                        padding: getPadding(top: 8),
                        primary: false,
                        shrinkWrap: true,
                        itemCount: controller.weekNumerList.length,
                        itemBuilder: (context, index) {
                          FindAWorkoutPlanChooseNumberWeeksModel data =
                              controller.weekNumerList[index];
                          return GestureDetector(
                            onTap: () {
                              findAWorkoutPlanOneController.currentWeek =
                                  data.numberOfWeek!;
                              findAWorkoutPlanOneController.update();
                              Get.back();
                            },
                            child: Padding(
                              padding: getPadding(top: 8, bottom: 8),
                              child: Padding(
                                padding: getPadding(bottom: 8),
                                child: Center(
                                    child: Text(
                                  data.numberOfWeek!.toString(),
                                  style: theme.textTheme.bodyLarge!,
                                )),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
