import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/core/utils/validation_functions.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';
import 'package:gym_app/widgets/custom_text_form_field.dart';

import '../login_filled_tab_container_screen/controller/login_filled_tab_container_controller.dart';
import 'controller/signup_controller.dart';
import 'models/signup_model.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SignupController controller = Get.put(SignupController(SignupModel().obs));
  LoginFilledTabContainerController loginFilledTabContainerController =
  Get.put(LoginFilledTabContainerController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Form(
        key: _formKey,
        child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
              padding: getPadding(left: 20, top: 45, right: 20),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_first_name".tr,
                          style: theme.textTheme.bodyLarge),
                      CustomTextFormField(

                          controller: controller.firstNameController,
                          margin: getMargin(top: 6),
                          hintText: "msg_enter_first_name".tr,
                          hintStyle: CustomTextStyles.bodyLargeGray600,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter valid text";
                            }
                            return null;
                          },
                          contentPadding: getPadding(
                              left: 12, top: 18, right: 12, bottom: 18))
                    ]),
                Padding(
                    padding: getPadding(top: 27),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("lbl_last_name".tr,
                              style: theme.textTheme.bodyLarge),
                          CustomTextFormField(
                              controller: controller.lastNameController,
                              margin: getMargin(top: 6),
                              hintText: "lbl_enter_last_name".tr,
                              hintStyle: CustomTextStyles.bodyLargeGray600,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter valid text";
                                }
                                return null;
                              },

                              contentPadding: getPadding(
                                  left: 12, top: 18, right: 12, bottom: 18))
                        ])),
                Padding(
                    padding: getPadding(top: 27),
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
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              },
                              contentPadding: getPadding(
                                  left: 12, top: 18, right: 12, bottom: 18))
                        ])),
                Padding(
                    padding: getPadding(top: 27),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("lbl_password".tr,
                              style: theme.textTheme.bodyLarge),
                          Obx(() => CustomTextFormField(
                              controller: controller.passwordController,
                              margin: getMargin(top: 6),
                              hintText: "lbl_password".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 17,
                                          right: 16,
                                          bottom: 16),
                                      child: CustomImageView(
                                          svgPath:
                                              controller.isShowPassword.value
                                                  ? ImageConstant.imgEyeOnprimarycontainer
                                                  : ImageConstant.imgEye))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(57)),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              obscureText: controller.isShowPassword.value,
                              contentPadding:
                                  getPadding(left: 16, top: 18, bottom: 18)))
                        ])),
                CustomElevatedButton(
                    height: getVerticalSize(54),
                    text: "lbl_signup".tr.toUpperCase(),
                    margin: getMargin(top: 40),
                    buttonStyle: CustomButtonStyles.fillPrimary,
                    buttonTextStyle: CustomTextStyles
                        .bodyLargeUniformProExtraCondensedOnErrorContainer,
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        loginFilledTabContainerController.tabviewController.animateTo(0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease);
                        loginFilledTabContainerController.pageController.animateToPage(0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease);
                        controller.firstNameController.clear();
                        controller.lastNameController.clear();
                        controller.emailController.clear();
                        controller.passwordController.clear();
                      }
                    })
              ]))
        ])));
  }

  onTapSignup() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
