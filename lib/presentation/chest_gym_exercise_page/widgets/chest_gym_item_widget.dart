import '../controller/chest_gym_exercise_controller.dart';
import '../models/chest_gym_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ChestGymItemWidget extends StatelessWidget {
  ChestGymItemWidget(
    this.chestGymItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChestGymItemModel chestGymItemModelObj;

  var controller = Get.find<ChestGymExerciseController>();

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
                  imagePath:chestGymItemModelObj.image,
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
                            child: Text(chestGymItemModelObj.level!,style: theme.textTheme.bodyLarge!,),
                          ),
                        ),

                        chestGymItemModelObj.isPro!?CustomIconButton(
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
                        // ignore: prefer_const_constructors
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
                  chestGymItemModelObj.title!.toUpperCase(),
                  style: CustomTextStyles.bodyMediumSfproDisplay22,
                ),
                CustomImageView(
                  onTap: (){
                    controller.setFavourite(chestGymItemModelObj);
                  },
                  color: chestGymItemModelObj.isFavourite!?appTheme.buttonColor:appTheme.whiteColor,
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
