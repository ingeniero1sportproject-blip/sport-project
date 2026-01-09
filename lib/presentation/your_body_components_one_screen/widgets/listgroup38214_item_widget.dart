import '../controller/your_body_components_one_controller.dart';
import '../models/listgroup38214_item_model.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';

// ignore: must_be_immutable
class Listgroup38214ItemWidget extends StatelessWidget {
  Listgroup38214ItemWidget(
    this.listgroup38214ItemModelObj, {
    Key? key,
    this.onTapWeekday,
  }) : super(
          key: key,
        );

  Listgroup38214ItemModel listgroup38214ItemModelObj;

  var controller =
      Get.find<YourBodyCompositionConsistsComponentsOneController>();

  VoidCallback? onTapWeekday;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapWeekday?.call();
      },
      child: Container(
        padding: getPadding(
          all: 16,
        ),
        decoration: AppDecoration.fillOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AnotherStepper(
              iconHeight: 32,
              iconWidth: 32,
              stepperDirection: Axis.horizontal,
              activeIndex: 1,
              barThickness: 2,
              activeBarColor: theme.colorScheme.primary,
              inActiveBarColor: theme.colorScheme.primaryContainer,
              inverted: true,
              stepperList: [
                StepperData(
                  iconWidget: Container(
                    padding: getPadding(
                      left: 12,
                      top: 5,
                      right: 12,
                      bottom: 5,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Text(
                      "lbl_1".tr,
                      style: CustomTextStyles.bodyLargeOnErrorContainer,
                    ),
                  ),
                ),
                StepperData(
                  iconWidget: Container(
                    padding: getPadding(
                      left: 11,
                      top: 5,
                      right: 11,
                      bottom: 5,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Text(
                      "lbl_2".tr,
                      style: CustomTextStyles.bodyLargeOnErrorContainer,
                    ),
                  ),
                ),
                StepperData(
                  iconWidget: Container(
                    padding: getPadding(
                      left: 11,
                      top: 5,
                      right: 11,
                      bottom: 5,
                    ),
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Text(
                      "lbl_3".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                StepperData(
                  iconWidget: Container(
                    padding: getPadding(
                      left: 11,
                      top: 5,
                      right: 11,
                      bottom: 5,
                    ),
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Text(
                      "lbl_4".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: getPadding(
                top: 19,
                bottom: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => Text(
                      listgroup38214ItemModelObj.weekCounterTxt.value,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  Text(
                    "lbl_4_days".tr.toUpperCase(),
                    style: theme.textTheme.titleLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
