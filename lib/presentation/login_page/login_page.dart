import 'controller/login_controller.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/core/utils/validation_functions.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';
import 'package:gym_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LoginController controller = Get.put(LoginController(LoginModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onErrorContainer,
            body: Form(
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
                                              "msg_enter_email_address".tr,
                                          hintStyle:
                                              CustomTextStyles.bodyLargeGray600,
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
                                              controller:
                                                  controller.passwordController,
                                              margin: getMargin(top: 6),
                                              hintText: "lbl_enter_password".tr,
                                              hintStyle: CustomTextStyles
                                                  .bodyLargeGray600,
                                              textInputAction:
                                                  TextInputAction.done,
                                              textInputType:
                                                  TextInputType.visiblePassword,
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
                                                          left: 12,
                                                          top: 17,
                                                          right: 16,
                                                          bottom: 16),
                                                      child: CustomImageView(
                                                          svgPath: controller
                                                                  .isShowPassword
                                                                  .value
                                                              ? ImageConstant
                                                                  .imgEye
                                                              : ImageConstant
                                                                  .imgEye))),
                                              suffixConstraints: BoxConstraints(
                                                  maxHeight:
                                                      getVerticalSize(57)),
                                              validator: (value) {
                                                if (value == null ||
                                                    (!isValidPassword(value,
                                                        isRequired: true))) {
                                                  return "Please enter valid password";
                                                }
                                                return null;
                                              },
                                              obscureText: controller
                                                  .isShowPassword.value,
                                              contentPadding: getPadding(
                                                  left: 16,
                                                  top: 18,
                                                  bottom: 18)))
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
                                      onTapLogin();
                                    })
                              ]))
                    ])))));
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the forgotPasswordScreen.
  onTapTxtForgotpassword() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  /// Navigates to the homeContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the homeContainerScreen.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
