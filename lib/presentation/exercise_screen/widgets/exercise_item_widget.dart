import '../controller/exercise_controller.dart';
import '../models/exercise_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ExerciseItemWidget extends StatelessWidget {
  ExerciseItemWidget(
    this.exerciseItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ExerciseItemModel exerciseItemModelObj;

  var controller = Get.find<ExerciseController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
       top: 4,left: 8,right: 8
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(

            height: getVerticalSize(167),
            width: double.infinity,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: exerciseItemModelObj.image,
                  height: getVerticalSize(167),
                  width: getHorizontalSize(163),
                  radius: BorderRadius.circular(
                    getHorizontalSize(16),
                  ),
                fit: BoxFit.fill,
                ),
                exerciseItemModelObj.isPro!? CustomIconButton(
                  height: getSize(24),
                  width: getSize(24),
                  margin: getMargin(
                    top: 8,
                    right: 8,
                  ),
                  padding: getPadding(
                    all: 4,
                  ),
                  alignment: Alignment.topRight,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgPremiumquality,
                  ),
                // ignore: prefer_const_constructors
                ):SizedBox(),
              ],
            ),
          ),
          SizedBox(height: getVerticalSize(4),),
          Text(
            exerciseItemModelObj.title!.toUpperCase(),
            style: theme.textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
