import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';

import '../chest_home_exercise_page/widgets/chestworkout_item_widget.dart';
import 'controller/chest_home_exercise_controller.dart';
import 'models/chestworkout_item_model.dart';

// ignore: must_be_immutable
class ChestHomeExercisePage extends StatelessWidget {
  ChestHomeExercisePage({Key? key})
      : super(
          key: key,
        );

  ChestHomeExerciseController controller =
      Get.put(ChestHomeExerciseController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return GetBuilder<ChestHomeExerciseController>(
      init: ChestHomeExerciseController(),
      builder: (controller) => Container(
        width: double.maxFinite,
        decoration: AppDecoration.fillOnErrorContainer,
        child: Padding(
          padding: getPadding(
            left: 20,
            top: 24,
            right: 20,
          ),
          child: ListView.separated(
            // ignore: prefer_const_constructors
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
            itemCount: controller.chestGymHome.length,
            itemBuilder: (context, index) {
              ChestworkoutItemModel model = controller.chestGymHome[index];
              return animation_function(index,  ChestworkoutItemWidget(
                model,
              ));
            },
          ),
        ),
      ),
    );
  }
}
