import '../controller/week_one_controller.dart';
import '../models/dayexercise_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';

// ignore: must_be_immutable
class DayexerciseItemWidget extends StatelessWidget {
  DayexerciseItemWidget(
    this.dayexerciseItemModelObj,this.index, {
    Key? key,
    this.onTapImgAddImage,
  }) : super(
          key: key,
        );

  DayexerciseItemModel dayexerciseItemModelObj;
  int? index;

  WeekOneController controller = Get.put(WeekOneController());

  VoidCallback? onTapImgAddImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: getPadding(
      //   left: 8,
      //   top: 18,
      //   right: 8,
      //   bottom: 18,
      // ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Padding(
        padding: getPadding(left: 16,right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "week ${dayexerciseItemModelObj.day!.toString()}".toUpperCase(),
                  style: CustomTextStyles.bodyMediumSfproDisplay22,
                  // style: theme.textTheme.titleLarge,
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Text(
                    "${dayexerciseItemModelObj.noOfExecersize} exercise",
                    style: CustomTextStyles.bodyLargeGray600,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgIccopy,
                  height: getSize(24),
                  width: getSize(24),
                  margin: getMargin(
                    left: 0,
                    top: 15,
                    bottom: 15,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgPlus,
                  height: getSize(24),
                  width: getSize(24),
                  margin: getMargin(
                    left: 8,
                    top: 15,
                    bottom: 15,
                  ),
                  onTap: () {
                    onTapImgAddImage?.call();
                  },
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
