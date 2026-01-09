import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/core/utils/validation_functions.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';
import 'package:gym_app/widgets/custom_text_form_field.dart';

import 'controller/login_filled_controller.dart';
import 'models/login_filled_model.dart';

// ignore_for_file: must_be_immutable
class LoginFilledPage extends StatelessWidget {
  LoginFilledPage({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LoginFilledController controller =
      Get.put(LoginFilledController(LoginFilledModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return  Form(
        key: _formKey,
        child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: getPadding(left: 20, top: 45, right: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("lbl_email_address".tr,
                                      style: theme.textTheme.bodyLarge),

                                  CustomTextFormField(
                                      controller:
                                      controller.emailController,
                                      margin: getMargin(top: 6),
                                      hintText:
                                      "lbl_email_address".tr,

                                      textInputType:
                                      TextInputType.emailAddress,
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidEmail(value,
                                                isRequired: true))) {
                                          return "Please valid your email address.";
                                        }
                                        return null;
                                      })
                                ]),
                            Padding(
                                padding: getPadding(top: 27),
                                child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_password".tr,
                                          style: theme.textTheme.bodyLarge),
                                      Obx(() => CustomTextFormField(
                                          hintText:
                                          "lbl_password".tr,
                                          controller:
                                          controller.passwordController,
                                          margin: getMargin(top: 6),
                                          textInputAction:
                                          TextInputAction.done,
                                          suffix: InkWell(
                                              onTap: () {
                                                controller.isShowPassword
                                                    .value =
                                                !controller
                                                    .isShowPassword
                                                    .value;
                                              },
                                              child: Container(
                                                  margin: getMargin(
                                                      left: 30,
                                                      top: 17,
                                                      right: 16,
                                                      bottom: 16),
                                                  child: CustomImageView(
                                                      svgPath: controller
                                                          .isShowPassword
                                                          .value
                                                          ? ImageConstant.imgEyeOnprimarycontainer
                                                          : ImageConstant.imgEye))),
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return "Please valid your password.";
                                            }
                                            return null;
                                          },
                                          suffixConstraints: BoxConstraints(
                                              maxHeight:
                                              getVerticalSize(57)),
                                          obscureText: controller
                                              .isShowPassword.value))
                                    ])),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtForgotpassword();
                                },
                                child: Padding(
                                    padding: getPadding(top: 20),
                                    child: Text("msg_forgot_password".tr,
                                        style: theme.textTheme.bodyLarge))),
                            CustomElevatedButton(
                                height: getVerticalSize(54),
                                text: "lbl_login".tr.toUpperCase(),
                                margin: getMargin(top: 41),
                                buttonStyle: CustomButtonStyles.fillPrimary,
                                buttonTextStyle: CustomTextStyles
                                    .bodyLargeUniformProExtraCondensedOnErrorContainer,
                                onTap: () {
                                  if(_formKey.currentState!.validate()){
                                    PrefUtils.setIsSignIn(false);
                                  onTapLogin();}
                                })
                          ]))
                ])));
  }


  onTapTxtForgotpassword() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }


  onTapLogin() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
