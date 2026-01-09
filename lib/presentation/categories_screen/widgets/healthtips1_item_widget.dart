import '../controller/categories_controller.dart';
import '../models/healthtips1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';

// ignore: must_be_immutable
class Healthtips1ItemWidget extends StatelessWidget {
  Healthtips1ItemWidget(
    this.healthtips1ItemModelObj, {
    Key? key,
    this.onTapHealthtips,
  }) : super(
          key: key,
        );

  Healthtips1ItemModel healthtips1ItemModelObj;

  var controller = Get.find<CategoriesController>();

  VoidCallback? onTapHealthtips;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapHealthtips?.call();
      },
      child: Container(

        decoration: AppDecoration.fillOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              svgPath:healthtips1ItemModelObj.icon,
              height: getSize(48),
              width: getSize(48),
            ),
            Padding(
              padding: getPadding(
                top: 11,
                bottom: 5,
              ),
              child: Text(
                healthtips1ItemModelObj.title!.toUpperCase(),
                style: theme.textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
