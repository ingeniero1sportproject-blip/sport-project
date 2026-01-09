// ignore_for_file: prefer_final_fields, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/core/utils/validation_functions.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';
import 'package:gym_app/widgets/custom_text_form_field.dart';

import 'controller/forgot_password_controller.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  ForgotPasswordController controller = Get.put(ForgotPasswordController());
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
              title:
                  AppbarTitle(text: "lbl_forgot_password".tr.toUpperCase()),
              styleType: Style.bgFill),
          body: SafeArea(
            child: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 20, top: 26, right: 20, bottom: 26),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: getHorizontalSize(284),
                              margin: getMargin(left: 45, right: 44),
                              child: Text("msg_please_enter_your".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodyLarge!
                                      .copyWith(height: 1.56))),
                          Padding(
                              padding: getPadding(top: 42),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_email_address".tr,
                                        style: theme.textTheme.bodyLarge),
                                    CustomTextFormField(
                                        controller: controller.emailController,
                                        margin: getMargin(top: 6),
                                        hintText: "msg_enter_email_address".tr,
                                        hintStyle:
                                            CustomTextStyles.bodyLargeGray600,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidEmail(value,
                                                  isRequired: true))) {
                                            return "Please enter valid email";
                                          }
                                          return null;
                                        },
                                        contentPadding: getPadding(
                                            left: 12,
                                            top: 18,
                                            right: 12,
                                            bottom: 18))
                                  ])),
                          CustomElevatedButton(
                              height: getVerticalSize(54),
                              text: "lbl_continue".tr.toUpperCase(),
                              margin: getMargin(top: 40, bottom: 5),
                              buttonStyle: CustomButtonStyles.fillPrimary,
                              buttonTextStyle: CustomTextStyles
                                  .bodyLargeUniformProExtraCondensedOnErrorContainer,
                              onTap: () {
                                if (_formKey.currentState!.validate()) {
                                  onTapContinue();
                                }
                              })
                        ]))),
          )),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }

  onTapContinue() {
    Get.toNamed(
      AppRoutes.verificationScreen,
    );
  }
}
