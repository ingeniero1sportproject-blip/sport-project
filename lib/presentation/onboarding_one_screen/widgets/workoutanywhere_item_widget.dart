import '../controller/onboarding_one_controller.dart';
import '../models/workoutanywhere_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class WorkoutanywhereItemWidget extends StatelessWidget {
  WorkoutanywhereItemWidget(
    this.workoutanywhereItemModelObj, {
    Key? key,
    this.onTapNextButton,
  }) : super(
          key: key,
        );

  WorkoutanywhereItemModel workoutanywhereItemModelObj;

  var controller = Get.find<OnboardingOneController>();

  VoidCallback? onTapNextButton;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: getPadding(
          left: 16,
          top: 24,
          right: 16,
          bottom: 24,
        ),
        decoration: AppDecoration.white.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder32,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "msg_workout_anywhere".tr.toUpperCase(),
              style: theme.textTheme.displayMedium,
            ),
            Padding(
              padding: getPadding(
                left: 19,
                top: 16,
                right: 19,
              ),
              child: Text(
                "msg_you_can_do_your".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge!.copyWith(
                  height: 1.56,
                ),
              ),
            ),
            CustomElevatedButton(
              height: getVerticalSize(54),
              text: "lbl_next".tr.toUpperCase(),
              margin: getMargin(
                top: 87,
              ),
              buttonStyle: CustomButtonStyles.fillPrimary,
              buttonTextStyle: CustomTextStyles
                  .bodyLargeUniformProExtraCondensedOnErrorContainer,
              onTap: () {
                onTapNextButton?.call();
              },
            ),
          ],
        ),
      ),
    );
  }
}
