import 'package:flutter/cupertino.dart';

import '../core/app_export.dart';
import '../presentation/find_a_workout_plan_one_screen/controller/find_a_workout_plan_one_controller.dart';
import 'controller/choose_number_of_week_controller.dart';

class NumberOfWeekDays extends StatefulWidget {
  const NumberOfWeekDays({super.key});

  @override
  State<NumberOfWeekDays> createState() => _NumberOfWeekDaysState();
}

class _NumberOfWeekDaysState extends State<NumberOfWeekDays> {
  FindAWorkoutPlanOneController findAWorkoutPlanOneController =
  Get.put(FindAWorkoutPlanOneController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChooseNumberOfWeekDaysController>(
        init: ChooseNumberOfWeekDaysController(),
        builder: (controller) => SizedBox(
          height: getSize(424),
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
                    Text("msg_choose_days_per".tr.toUpperCase(),
                        style: theme.textTheme.titleLarge),
                    CustomImageView(
                        svgPath: ImageConstant.imgClose,
                        height: getSize(24),
                        width: getSize(24),
                        alignment: Alignment.topRight,
                        margin: getMargin(top: 0),
                        onTap: () {
                          Get.back();
// onTapImgCloseone();
                        })
                  ],
                ),
                Center(
                  child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    padding: getPadding(top: 8),
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          findAWorkoutPlanOneController.currentWeekdays = index+1;
                          findAWorkoutPlanOneController.update();
                          Get.back();
                        },
                        child: Padding(
                          padding: getPadding(top: 8, bottom: 8),
                          child: Padding(
                            padding: getPadding(bottom: 8),
                            child: Center(
                                child: Text(
                                 " ${index + 1}",
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
