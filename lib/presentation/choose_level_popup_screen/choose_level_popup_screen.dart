// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';

import '../find_a_workout_plan_one_screen/controller/find_a_workout_plan_one_controller.dart';
import 'controller/choose_level_popup_controller.dart';
import 'models/choose_level_popup_model.dart';




class ChooseLevelPopupScreen extends StatefulWidget {
  const ChooseLevelPopupScreen({super.key});

  @override
  State<ChooseLevelPopupScreen> createState() => _ChooseLevelPopupScreenState();
}

class _ChooseLevelPopupScreenState extends State<ChooseLevelPopupScreen> {
 ChooseLevelPopupController chooseLevelPopupController = Get.put(ChooseLevelPopupController());
 FindAWorkoutPlanOneController findAWorkoutPlanOneController = Get.put(FindAWorkoutPlanOneController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChooseLevelPopupController>(
        init: ChooseLevelPopupController(),
        builder:(controller) =>
            SizedBox(
             height: getSize(274),
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
                      "lbl_choose_level"
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
                  itemCount: controller.chooseLevelOption.length,
                  itemBuilder: (context, index) {
                    ChooseLevelPopupModel data = controller.chooseLevelOption[index];
                   return GestureDetector(
                    onTap: (){
                     findAWorkoutPlanOneController.currentLevel = data.lavelTitle;
                     findAWorkoutPlanOneController.update();
                     Get.back();
                    },
                    child: Padding(
                     padding: getPadding(top: 8,bottom: 8),
                     child: Padding(
                      padding:getPadding(bottom: 8),
                      child: Center(child: Text(data.lavelTitle!,style: theme.textTheme.bodyLarge!,)),
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
}










