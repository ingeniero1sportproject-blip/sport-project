// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';
import 'package:gym_app/widgets/custom_text_form_field.dart';

import '../password_changed_popup_screen/password_changed_popup_screen.dart';
import 'controller/reset_password_controller.dart';




class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
 ResetPasswordController controller = Get.put(ResetPasswordController());
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
        body: SafeArea(
          child: SizedBox(
              width: double.maxFinite,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   Container(
                       padding: getPadding(top: 20, bottom: 20),
                       decoration: AppDecoration.fillOnErrorContainer,
                       child: CustomAppBar(
                           height: getVerticalSize(33),
                           leadingWidth: getHorizontalSize(44),
                           leading: AppbarImage(
                               svgPath: ImageConstant.imgArrowleft,
                               margin:
                               getMargin(left: 20, top: 5, bottom: 3),
                               onTap: () {
                                onTapArrowleftone();
                               }),
                           centerTitle: true,
                           title: AppbarTitle(
                               text:
                               "lbl_reset_password".tr.toUpperCase()))),
                   Container(
                       padding: getPadding(
                           left: 20, top: 26, right: 20, bottom: 26),
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
                                padding: getPadding(top: 44),
                                child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                     Text("lbl_new_password".tr,
                                         style: theme.textTheme.bodyLarge),
                                     Obx(() => CustomTextFormField(
                                      hintText: 'lbl_new_password'.tr,
                                         controller: controller
                                             .newpasswordController,
                                         margin: getMargin(top: 5),
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
                                         suffixConstraints: BoxConstraints(
                                             maxHeight:
                                             getVerticalSize(57)),
                                         obscureText: controller
                                             .isShowPassword.value))
                                    ])),
                            Padding(
                                padding: getPadding(top: 27),
                                child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                     Text("msg_confirm_password".tr,
                                         style: theme.textTheme.bodyLarge),
                                     Obx(() => CustomTextFormField(
                                      hintText: 'msg_confirm_password'.tr,
                                         controller: controller
                                             .confirmpasswordController,
                                         margin: getMargin(top: 5),
                                         textInputAction:
                                         TextInputAction.done,
                                         suffix: InkWell(
                                             onTap: () {
                                              controller.isShowPassword1
                                                  .value =
                                              !controller
                                                  .isShowPassword1
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
                                                         .isShowPassword1
                                                         .value
                                                         ? ImageConstant.imgEyeOnprimarycontainer
                                                         : ImageConstant.imgEye))),
                                         suffixConstraints: BoxConstraints(
                                             maxHeight:
                                             getVerticalSize(57)),
                                         obscureText: controller
                                             .isShowPassword1.value))
                                    ])),
                            CustomElevatedButton(
                                height: getVerticalSize(54),
                                text: "lbl_create".tr.toUpperCase(),
                                margin: getMargin(top: 40, bottom: 5),
                                buttonStyle: CustomButtonStyles.fillPrimary,
                                buttonTextStyle: CustomTextStyles
                                    .bodyLargeUniformProExtraCondensedOnErrorContainer,
                                onTap: () {
                                 onTapCreate();
                                })
                           ]))
                  ])),
        )),
  );
 }


 onTapArrowleftone() {
  Get.back();
 }

 onTapCreate() {

   showDialog(
     barrierDismissible: false,
     context: context,

     builder: (context) {
       return AlertDialog(
         insetPadding: EdgeInsets.all(16),
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
         contentPadding:
         EdgeInsets.zero,
         content: PasswordChangedPopupScreen(),
       );
     },
   );

 }
}






