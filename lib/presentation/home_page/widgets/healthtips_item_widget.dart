import '../controller/home_controller.dart';
import '../models/healthtips_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';

// ignore: must_be_immutable
class HealthtipsItemWidget extends StatelessWidget {
  HealthtipsItemWidget(
    this.healthtipsItemModelObj, {
    Key? key,
    this.onTapHealthtips,
  }) : super(
          key: key,
        );

  HealthtipsItemModel healthtipsItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapHealthtips;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapHealthtips?.call();
      },
      child: Container(
        padding: getPadding(
          left: 46,
          top: 16,
          right: 46,
          bottom: 16,
        ),
        decoration: AppDecoration.fillOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgIcheart,
              height: getSize(48),
              width: getSize(48),
            ),
            Padding(
              padding: getPadding(
                top: 11,
                bottom: 5,
              ),
              child: Obx(
                () => Text(
                  healthtipsItemModelObj.healthTipsTextTxt.value,
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
