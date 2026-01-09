import '../controller/wishlist_controller.dart';
import '../models/wishlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';
import 'package:gym_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class WishlistItemWidget extends StatelessWidget {
  WishlistItemWidget(
    this.wishlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WishlistItemModel wishlistItemModelObj;

  var controller = Get.find<WishlistController>();

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
                  imagePath: ImageConstant.imgRectangle43922,
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
                        CustomElevatedButton(
                          height: getVerticalSize(31),
                          width: getHorizontalSize(68),
                          text: "lbl_beginer".tr,
                          buttonStyle: CustomButtonStyles.fillOnErrorContainer,
                          buttonTextStyle: theme.textTheme.bodyLarge!,
                        ),
                        CustomIconButton(
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
                        ),
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
                Obx(
                  () => Text(
                    wishlistItemModelObj.benchpressTxt.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                CustomImageView(
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
