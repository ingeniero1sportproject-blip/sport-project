
// ignore_for_file: deprecated_member_use

import '../../health_tips_details_screen/controller/health_tips_details_controller.dart';
import '../controller/health_tips_controller.dart';
import '../models/healthdefinitio_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class HealthdefinitioItemWidget extends StatelessWidget {
  HealthdefinitioItemWidget(
    this.healthdefinitioItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HealthdefinitioItemModel healthdefinitioItemModelObj;

  HealthTipsController controller = Get.put(HealthTipsController());
  HealthTipsDetailsController healthTipsDetailsController = Get.put(HealthTipsDetailsController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        healthTipsDetailsController.setcurrentTips(healthdefinitioItemModelObj);
        Get.toNamed(AppRoutes.healthTipsDetailsScreen);

      },
      child: Container(
        decoration: AppDecoration.fillPurple.copyWith(
          image: DecorationImage(image: AssetImage(healthdefinitioItemModelObj.image!),fit: BoxFit.fill),
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Stack(
          children: [
            Padding(
              padding: getPadding(
                left: 16,
                top: 19,
                bottom: 17,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    healthdefinitioItemModelObj.title!.toUpperCase(),
                    style: theme.textTheme.bodyLarge,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 4,right: 125,
                    ),
                    child: Container(

                      width: double.infinity,
                      child: Text(
                        healthdefinitioItemModelObj.subTitle!.toUpperCase(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleLarge!.copyWith(
                          height: 1.59,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 79,
                    ),
                    child:  Row(
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
                                Text(healthdefinitioItemModelObj.time!,style:  CustomTextStyles.bodyMediumSfproDisplay,)
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

                                Text(healthdefinitioItemModelObj.kcl!,style: CustomTextStyles.bodyMediumSfproDisplay,)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            healthdefinitioItemModelObj.isPro!?CustomIconButton(
              height: getSize(24),
              width: getSize(24),
              margin: getMargin(
                right: 8,
                top: 8
              ),
              padding: getPadding(
                all: 4,
              ),
              decoration: IconButtonStyleHelper.fillOnPrimaryContainerTL12.copyWith(
                color: appTheme.whiteColor.withOpacity(0.20)
              ),
              alignment: Alignment.topRight,
              child: CustomImageView(
                svgPath: ImageConstant.imgPremiumquality,
              ),
            ):SizedBox(),
          ],
        ),
      ),
    );
  }
}
