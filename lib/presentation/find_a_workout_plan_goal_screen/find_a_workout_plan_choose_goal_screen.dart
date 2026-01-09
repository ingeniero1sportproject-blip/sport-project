// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';

import '../find_a_workout_plan_one_screen/controller/find_a_workout_plan_one_controller.dart';
import 'controller/find_a_workout_plan_choose_goal.dart';
import 'models/find_a_workout_plan_choose_goal_model.dart';






class FindAWorkoutPlanChooseGoalScreen extends StatefulWidget {
  const FindAWorkoutPlanChooseGoalScreen({super.key});

  @override
  State<FindAWorkoutPlanChooseGoalScreen> createState() => _FindAWorkoutPlanChooseGoalScreenState();
}

class _FindAWorkoutPlanChooseGoalScreenState extends State<FindAWorkoutPlanChooseGoalScreen> {
 FindAWorkoutPlanChooseGoalController findAWorkoutPlanChooseGoalController = Get.put(FindAWorkoutPlanChooseGoalController());
 FindAWorkoutPlanOneController findAWorkoutPlanOneController = Get.put(FindAWorkoutPlanOneController());
 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return  GetBuilder<FindAWorkoutPlanChooseGoalController>(
      init: FindAWorkoutPlanChooseGoalController(),
      builder:(controller) =>
          SizedBox(
            height: getSize(374),
            width: getSize(374),
            child: Padding(
              padding: getPadding(all: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Text(
                          "lbl_choose_goal"
                              .tr
                              .toUpperCase(),
                          style:
                          theme.textTheme.titleLarge),
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
                      itemCount: controller.goalList.length,
                      itemBuilder: (context, index) {
                        FindAWorkoutPlanChooseGoalModel data = controller.goalList[index];
                        return GestureDetector(
                          onTap: (){
                            findAWorkoutPlanOneController.currentGoal = data.goalTitle;
                            findAWorkoutPlanOneController.update();
                            Get.back();
                          },
                          child: Padding(
                            padding: getPadding(top: 8,bottom: 8),
                            child: Padding(
                              padding:getPadding(bottom: 8),
                              child: Center(child: Text(data.goalTitle!,style: theme.textTheme.bodyLarge!,)),
                            ),
                          ),
                        );
                      },),
                  )
                ],
              ),
            ),
          )








  );
 }

 onTapImgCloseone() {
  Get.toNamed(
   AppRoutes.findAWorkoutPlanScreen,
  );
 }
}



