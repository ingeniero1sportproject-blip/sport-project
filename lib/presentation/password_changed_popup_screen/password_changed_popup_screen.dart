import 'controller/password_changed_popup_controller.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class PasswordChangedPopupScreen
    extends GetWidget<PasswordChangedPopupController> {
  const PasswordChangedPopupScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Padding(
      padding: getPadding(top: 24,bottom: 24,left: 16,right: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgCheckmark,
            height: getVerticalSize(83),
            width: getHorizontalSize(83),
            alignment: Alignment.center,
          ),
          Padding(
            padding: getPadding(
              top: 29,
            ),
            child: Text(
              "Password changed".toUpperCase(),
              style: theme.textTheme.headlineMedium,
            ),
          ),
          Container(
            width: getHorizontalSize(340),
            margin: getMargin(
              top: 16,
            ),
            child: Text(
              "msg_your_password_has".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge!.copyWith(
                height: 1.56,
              ),
            ),
          ),
          CustomElevatedButton(
            onTap: (){
              Get.offAllNamed(AppRoutes.loginFilledTabContainerScreen);
            },
            height: getVerticalSize(54),
            text: "lbl_ok".tr.toUpperCase(),
            margin: getMargin(
              top: 23,
            ),
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: CustomTextStyles
                .bodyLargeUniformProExtraCondensedOnErrorContainer,
          ),
        ],
      ),
    );
  }
}
