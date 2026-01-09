// ignore_for_file: deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/custom_button_style.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/popular_work_out_controller.dart';
import '../models/popular_work_item_model.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class PopularWorkItemWidget extends StatelessWidget {
  PopularWorkItemWidget(
    this.popularWorkItemModelObj, {
    Key? key,
    this.onTapPlay,
  }) : super(
          key: key,
        );

  PopularWorkItemModel popularWorkItemModelObj;

  PopularWorkOutController controller = Get.put(PopularWorkOutController());

  VoidCallback? onTapPlay;

  @override
  Widget build(BuildContext context) {

    print("ue===${popularWorkItemModelObj.kcal}");
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: getPadding(
                left: 16,
                top: 17,
                bottom: 17,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    popularWorkItemModelObj.title!,
                    style: theme.textTheme.bodyLarge,
                    maxLines: 2,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Container(
                      width: getSize(183),
                      child: Text(
                        popularWorkItemModelObj.msg!.toUpperCase(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleLarge!.copyWith(
                          height: 1.59,
                        ),
                      ),
                    ),
                  ),



                  CustomElevatedButton(
                    height: getVerticalSize(32),
                    width: getHorizontalSize(74),
                    text: "lbl_play2".tr,
                    margin: getMargin(
                      top: 21,
                    ),
                    buttonStyle: CustomButtonStyles.fillPrimary,
                    buttonTextStyle: CustomTextStyles.bodyMediumOnPrimary,
                    onTap: () {
                      controller.setCurrentWorkOut(popularWorkItemModelObj);
                      onTapPlay?.call();
                    },
                  ),
                  Padding(
                    padding: getPadding(
                      top: 26,
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
                                Text(popularWorkItemModelObj.time!,  style: CustomTextStyles.bodyMediumSfproDisplay,)
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
                                Text(popularWorkItemModelObj.kcal!,
                                style: CustomTextStyles.bodyMediumSfproDisplay,)
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

          ],
        ),
        popularWorkItemModelObj.isPro!?  CustomIconButton(
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
    );




  }
}
