// ignore_for_file: deprecated_member_use

import 'controller/confirm_payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';




class ConfirmPaymentScreen extends StatefulWidget {
  const ConfirmPaymentScreen({super.key});

  @override
  State<ConfirmPaymentScreen> createState() => _ConfirmPaymentScreenState();
}

class _ConfirmPaymentScreenState extends State<ConfirmPaymentScreen> {
  ConfirmPaymentController controller = Get.put(ConfirmPaymentController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return WillPopScope(
      onWillPop: ()async {
        return false;
      },
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        body: SafeArea(
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                    "lbl_confirm_payment".tr.toUpperCase(),
                    style: theme.textTheme.headlineMedium,
                  ),
                ),
                Container(
                  width: getHorizontalSize(362),
                  margin: getMargin(
                    left: 26,
                    top: 16,
                    right: 25,
                  ),
                  child: Text(
                    "msg_your_order_was_placed".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      height: 1.56,
                    ),
                  ),
                ),
                CustomElevatedButton(
                  onTap: () {
                    Get.offAllNamed(AppRoutes.homeContainerScreen);
                  },
                  height: getVerticalSize(54),
                  width: getHorizontalSize(237),
                  text: "lbl_back_to_home".tr.toUpperCase(),
                  margin: getMargin(
                    top: 23,
                    bottom: 23,
                  ),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles
                      .bodyLargeUniformProExtraCondensedOnErrorContainer,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}






