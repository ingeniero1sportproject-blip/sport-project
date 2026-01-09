// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';
import 'package:pinput/pinput.dart';

import 'controller/verification_controller.dart';


class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  VerificationController controller = Get.put(VerificationController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async{
        Get.back();
        return true;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: theme.colorScheme.onErrorContainer,
          appBar: CustomAppBar(
              leadingWidth: getHorizontalSize(44),
              leading: AppbarImage(
                  svgPath: ImageConstant.imgArrowleft,
                  margin: getMargin(left: 20, top: 26, bottom: 26),
                  onTap: () {
                    onTapArrowleftone();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_verification".tr.toUpperCase()),
              styleType: Style.bgFill),
          body: SafeArea(
            child: Form(
              key: _formKey,
              child: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 20, top: 26, right: 20, bottom: 26),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: getHorizontalSize(238),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_please_enter_the2".tr,
                                      style: theme.textTheme.bodyLarge),
                                  TextSpan(
                                      text: "msg_john123_gmail_com".tr,
                                      style: CustomTextStyles
                                          .bodyMediumSfproDisplay16)
                                ]),
                                textAlign: TextAlign.center)),
                  
                        Padding(
                            padding: getPadding(top: 47),
                            child: Obx(() =>
                                Pinput(
                  
                                  errorTextStyle: CustomTextStyles.bodyMediumRed700,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  disabledPinTheme: PinTheme(
                                      padding: getPadding(left: 8.5,right: 8.5),
                                      decoration: BoxDecoration(color: Colors.red)
                                  ),
                  
                                  controller: controller.otpController.value,
                                  length: 6,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please enter valid OTP";
                                    }
                                    return null;
                                  },
                  
                                  errorPinTheme: PinTheme(
                                    padding: getPadding(left: 9,right: 9),
                                    decoration: BoxDecoration(
                                      color:theme.colorScheme.onErrorContainer,
                                      border: Border.all(color:appTheme.red700 ),
                                      borderRadius:  BorderRadius.circular(
                                        getHorizontalSize(16),),
                  
                                    ),
                                    textStyle: TextStyle(
                                      color:appTheme.red700,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'SF UI Text',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    width: getHorizontalSize(48),
                                    height: getVerticalSize(48),
                                  ),
                                  defaultPinTheme: PinTheme(
                                    padding: getPadding(left: 8.5,right: 8.5),
                                    width: getHorizontalSize(48),
                                    height: getVerticalSize(48),
                                    textStyle:CustomTextStyles.bodyLargeOnError,
                                    decoration: BoxDecoration(
                                      color:appTheme.dark3Color,
                                      borderRadius:  BorderRadius.circular(
                                        getHorizontalSize(16),),
                  
                                    ),
                                  ),
                                )
                            )
                        ),
                        Padding(
                            padding: getPadding(top: 42),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: Text("msg_didn_t_get_code".tr,
                                          style: theme.textTheme.bodyLarge)),
                                  Padding(
                                      padding: getPadding(left: 4),
                                      child: Text("lbl_resend_otp".tr,
                                          style: theme.textTheme.titleMedium))
                                ])),
                        CustomElevatedButton(
                            height: getVerticalSize(54),
                            text: "lbl_verify".tr.toUpperCase(),
                            margin: getMargin(top: 44, bottom: 5),
                            buttonStyle: CustomButtonStyles.fillPrimary,
                            buttonTextStyle: CustomTextStyles
                                .bodyLargeUniformProExtraCondensedOnErrorContainer,
                            onTap: () {
                              if(_formKey.currentState!.validate()){
                              onTapVerify();}
                            })
                      ])),
            ),
          )),
    );
  }


  onTapArrowleftone() {
    Get.back();
  }


  onTapVerify() {
    Get.toNamed(
      AppRoutes.resetPasswordScreen,
    );
  }
}






