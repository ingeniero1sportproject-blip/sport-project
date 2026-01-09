// ignore_for_file: prefer_const_constructors

import '../chest_gym_exercise_page/widgets/chest_gym_item_widget.dart';
import 'controller/chest_gym_exercise_controller.dart';
import 'models/chest_gym_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';



class ChestGymExercisePage extends StatefulWidget {
  const ChestGymExercisePage({super.key});

  @override
  State<ChestGymExercisePage> createState() => _ChestGymExercisePageState();
}

class _ChestGymExercisePageState extends State<ChestGymExercisePage> {
  ChestGymExerciseController chestGymExerciseController = Get.put(ChestGymExerciseController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return GetBuilder<ChestGymExerciseController>(
      init: ChestGymExerciseController(),
      builder:(controller) =>  Container(
        width: double.maxFinite,
        decoration: AppDecoration.fillOnErrorContainer,
        child: Padding(
          padding: getPadding(
            left: 20,
            top: 24,
            right: 20,
          ),
          child:
          ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
                context,
                index,
                ) {
              return SizedBox(
                height: getVerticalSize(16),
              );
            },
            itemCount: controller.cheastGym.length,
            itemBuilder: (context, index) {
              ChestGymItemModel model = controller.cheastGym[index];
              return animation_function(index, ChestGymItemWidget(
                model,
              ));
            },
          ),
        ),
      ),
    );
  }
}






