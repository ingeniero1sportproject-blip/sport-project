import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';

// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key})
      : super(
          key: key,
        );

  ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillOnErrorContainer,
      child: ListView(
        primary: true,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            padding: getPadding(
              left: 0,
              top: 20,
              right: 0,
              bottom: 20,
            ),
            decoration: AppDecoration.fillOnErrorContainer,
            child: Text(
              "lbl_profile2".tr.toUpperCase(),
              style: theme.textTheme.headlineMedium,
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgAvtar1,
            height: getSize(80),
            width: getSize(80),
            margin: getMargin(
              top: 16,
            ),
          ),
          Padding(

            padding: getPadding(
              top: 19,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "lbl_john_abram".tr.toUpperCase(),
                style: theme.textTheme.titleLarge,
                ),
            ),

          ),
          Padding(
            padding: getPadding(
              top: 9,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "msg_johnabram_gmail_com".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.toNamed(AppRoutes.myProfileScreen);
            },
            child: Container(
              margin: getMargin(
                left: 20,
                top: 33,
                right: 20,
              ),
              padding: getPadding(
                all: 8,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: getSize(40),
                    width: getSize(40),
                    padding: getPadding(
                      all: 8,
                    ),
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder20,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgIcprofile,
                      height: getSize(24),
                      width: getSize(24),
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 12,
                      top: 11,
                      bottom: 8,
                    ),
                    child: Text(
                      "lbl_my_profile".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowright,
                    height: getSize(24),
                    width: getSize(24),
                    margin: getMargin(
                      top: 8,
                      right: 8,
                      bottom: 8,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.toNamed(AppRoutes.wishlistScreen);
            },
            child: Container(
              margin: getMargin(
                left: 20,
                top: 16,
                right: 20,
              ),
              padding: getPadding(
                all: 8,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: getSize(40),
                    width: getSize(40),
                    padding: getPadding(
                      all: 8,
                    ),
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder20,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgComputer,
                      height: getSize(24),
                      width: getSize(24),
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 12,
                      top: 9,
                      bottom: 10,
                    ),
                    child: Text(
                      "lbl_wishlist".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowright,
                    height: getSize(24),
                    width: getSize(24),
                    margin: getMargin(
                      top: 8,
                      right: 8,
                      bottom: 8,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.toNamed(AppRoutes.settingsScreen);
            },
            child: Container(
              margin: getMargin(
                left: 20,
                top: 16,
                right: 20,
              ),
              padding: getPadding(
                all: 8,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: getSize(40),
                    width: getSize(40),
                    padding: getPadding(
                      all: 8,
                    ),
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder20,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgSettingsOnprimarycontainer,
                      height: getSize(24),
                      width: getSize(24),
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 12,
                      top: 11,
                      bottom: 8,
                    ),
                    child: Text(
                      "lbl_settings".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowright,
                    height: getSize(24),
                    width: getSize(24),
                    margin: getMargin(
                      top: 8,
                      right: 8,
                      bottom: 8,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.toNamed(AppRoutes.privacyPolicyScreen);
            },
            child: Container(
              margin: getMargin(
                left: 20,
                top: 16,
                right: 20,
              ),
              padding: getPadding(
                all: 8,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: getSize(40),
                    width: getSize(40),
                    padding: getPadding(
                      all: 8,
                    ),
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder20,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgCheckmarkOnprimarycontainer,
                      height: getSize(24),
                      width: getSize(24),
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 12,
                      top: 11,
                      bottom: 8,
                    ),
                    child: Text(
                      "lbl_privacy_policy".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowright,
                    height: getSize(24),
                    width: getSize(24),
                    margin: getMargin(
                      top: 8,
                      right: 8,
                      bottom: 8,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.toNamed(AppRoutes.premiumScreen);
            },
            child: Container(
              margin: getMargin(
                left: 20,
                top: 16,
                right: 20,
              ),
              padding: getPadding(
                all: 8,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: getSize(40),
                    width: getSize(40),
                    padding: getPadding(
                      all: 8,
                    ),
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder20,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgIcpremium,
                      height: getSize(24),
                      width: getSize(24),
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 12,
                      top: 9,
                      bottom: 10,
                    ),
                    child: Text(
                      "lbl_premium".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowright,
                    height: getSize(24),
                    width: getSize(24),
                    margin: getMargin(
                      top: 8,
                      right: 8,
                      bottom: 8,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GetBuilder<CustomBottomBarController>(
            init: CustomBottomBarController(),
            builder:(customBottomBarController) =>  GestureDetector(
              onTap: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                        insetPadding: EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        contentPadding: EdgeInsets.zero,
                        content: Container(
                            width: getHorizontalSize(396),
                            padding:
                            getPadding(left: 0, top: 24, right: 0, bottom: 24),

                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Are you sure you want to logout?",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleLarge20,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 16,
                                    top: 28,
                                    right: 30,
                                    bottom: 2,
                                  ),
                                  child: Row(
                                    children: [


                                      Expanded(
                                        child: CustomElevatedButton(
                                            height: getVerticalSize(54),

                                            text: "No".toUpperCase(),
                                            margin: getMargin(left: 16),
                                            buttonStyle: CustomButtonStyles.primaryborderstyle,
                                            buttonTextStyle: CustomTextStyles
                                                .bodyLargeUniformProExtraCondensedButtonColor,
                                            onTap: () {
                                              Get.back();
                                              // onTapNext();
                                            }),
                                      ),

                                      Expanded(
                                        child: CustomElevatedButton(
                                            height: getVerticalSize(54),

                                            text: "Yes".toUpperCase(),
                                            margin: getMargin(left: 16),
                                            buttonStyle: CustomButtonStyles.fillPrimary,
                                            buttonTextStyle: CustomTextStyles
                                                .bodyLargeUniformProExtraCondensedOnErrorContainer,
                                            onTap: () {
                                              customBottomBarController.getIndex(0);
                                              PrefUtils.setIsSignIn(true);
                                              Get.offAllNamed(AppRoutes.loginFilledTabContainerScreen);
                                            }),
                                      )


                                    ],
                                  ),
                                ),
                              ],
                            )));
                  },
                );
              },
              child: Container(
                margin: getMargin(
                  left: 20,
                  top: 16,
                  right: 20,
                  bottom: 5,
                ),
                padding: getPadding(
                  all: 8,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: getSize(40),
                      width: getSize(40),
                      padding: getPadding(
                        all: 8,
                      ),
                      decoration: AppDecoration.fillPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder20,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgIclogout,
                        height: getSize(24),
                        width: getSize(24),
                        alignment: Alignment.center,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 12,
                        top: 11,
                        bottom: 8,
                      ),
                      child: Text(
                        "lbl_log_out".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowright,
                      height: getSize(24),
                      width: getSize(24),
                      margin: getMargin(
                        top: 8,
                        right: 8,
                        bottom: 8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
