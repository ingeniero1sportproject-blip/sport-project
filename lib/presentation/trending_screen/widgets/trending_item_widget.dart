// ignore_for_file: deprecated_member_use

import '../controller/trending_controller.dart';
import '../models/trending_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TrendingItemWidget extends StatelessWidget {
  TrendingItemWidget(
    this.trendingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TrendingItemModel trendingItemModelObj;

  TrendingController controller = Get.put(TrendingController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
      left: 8,right: 8,top: 8,bottom: 16
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(

            height: getVerticalSize(160),
            width:double.infinity,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath:trendingItemModelObj.image,
                  height: getVerticalSize(160),
                  width: getHorizontalSize(358),
                  radius: BorderRadius.circular(
                    getHorizontalSize(16),
                  ),
                 fit: BoxFit.fill,
                ),
                trendingItemModelObj.isPro!?CustomIconButton(
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
                ):SizedBox(),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 4,
              top: 11,
            ),
            child: Text(
              trendingItemModelObj.title!.toUpperCase(),
              style: CustomTextStyles.titleLarge20,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 8,
            ),
            child: Row(
              children: [

                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(16),),
                      color: appTheme.whiteColor.withOpacity(0.14)
                  ),
                  child: Padding(
                    padding: getPadding(top: 4,bottom: 4,left: 8,right: 8),
                    child: Row(
                      children: [
                        Container(
                          margin: getMargin(
                            right: 4,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgClock,
                          ),
                        ),
                        Text(trendingItemModelObj.time!, style: CustomTextStyles.bodyMediumSfproDisplay)
                      ],
                    ),
                  ),
                ),
                SizedBox(width: getHorizontalSize(8),),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(16),),
                      color: appTheme.whiteColor.withOpacity(0.14)),
                  child: Padding(
                    padding: getPadding(top: 4,bottom: 4,left: 8,right: 8),
                    child: Row(
                      children: [
                        Container(
                          margin: getMargin(
                            right: 4,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgIcFire,
                          ),
                        ),

                        Text(trendingItemModelObj.kcl!, style: CustomTextStyles.bodyMediumSfproDisplay)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
