// ignore_for_file: prefer_const_constructors

import '../controller/chest_home_exercise_controller.dart';
import '../models/chestworkout_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ChestworkoutItemWidget extends StatelessWidget {
  ChestworkoutItemWidget(
    this.chestworkoutItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChestworkoutItemModel chestworkoutItemModelObj;

  var controller = Get.find<ChestHomeExerciseController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 8,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: getVerticalSize(162),
            width: getHorizontalSize(358),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                CustomImageView(
                  imagePath: chestworkoutItemModelObj.image,
                  height: getVerticalSize(162),
                  width: getHorizontalSize(358),
                  radius: BorderRadius.circular(
                    getHorizontalSize(16),
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: getPadding(
                      left: 8,
                      top: 8,
                      right: 8,
                      bottom: 123,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(15)),
                              color: appTheme.dark1Color),
                          child: Padding(
                            padding: getPadding(top: 3,bottom: 3,left: 8,right: 8),
                            child: Text(chestworkoutItemModelObj.level!,style: theme.textTheme.bodyLarge!,),
                          ),
                        ),

                        chestworkoutItemModelObj.isPro!? CustomIconButton(
                          height: getSize(24),
                          width: getSize(24),
                          margin: getMargin(
                            bottom: 7,
                          ),
                          padding: getPadding(
                            all: 4,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgPremiumquality,
                          ),
                        ):SizedBox(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 4,
              top: 11,
              right: 8,
              bottom: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  chestworkoutItemModelObj.title!.toUpperCase(),
                  style: CustomTextStyles.bodyMediumSfproDisplay22,
                ),
                CustomImageView(
                  onTap: (){
                    controller.setFavourite(chestworkoutItemModelObj);
                  },
                  color: chestworkoutItemModelObj.isFavourite!?appTheme.buttonColor:appTheme.whiteColor,
                  svgPath: ImageConstant.imgLocation,
                  height: getSize(24),
                  width: getSize(24),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
