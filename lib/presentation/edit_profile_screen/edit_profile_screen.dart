// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/core/utils/validation_functions.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';
import 'package:gym_app/widgets/custom_icon_button.dart';
import 'package:gym_app/widgets/custom_text_form_field.dart';

import 'controller/edit_profile_controller.dart';



class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
 EditProfileController controller = Get.put(EditProfileController());
 GlobalKey<FormState> _formKey = GlobalKey<FormState>();

 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  controller.firstNameController.text = "lbl_john".tr;
  controller.lastNameController.text = "lbl_abram".tr;
  controller.emailController.text = "msg_johnabram_gmail_com".tr;
  return WillPopScope(
   onWillPop: ()async {
    Get.back();
    return true;
   },
   child: Scaffold(
       resizeToAvoidBottomInset: false,
       backgroundColor: theme.colorScheme.onErrorContainer,
       body: SafeArea(
         child: Form(
             key: _formKey,
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
                                  margin: getMargin(
                                      left: 20, top: 5, bottom: 3),
                                  onTap: () {
                                   onTapArrowleftone();
                                  }),
                              centerTitle: true,
                              title: AppbarTitle(
                                  text: "lbl_edit_profile"
                                      .tr
                                      .toUpperCase()))),
                      Container(
                          padding: getPadding(
                              left: 20, top: 16, right: 20, bottom: 16),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                               SizedBox(
                                   height: getSize(80),
                                   width: getSize(80),
                                   child: Stack(
                                       alignment: Alignment.bottomRight,
                                       children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgEllipse225,
                                            height: getSize(80),
                                            width: getSize(80),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(40)),
                                            alignment: Alignment.center),
                                        CustomIconButton(
                                            height: getSize(32),
                                            width: getSize(32),
                                            padding: getPadding(all: 6),
                                            decoration:
                                            IconButtonStyleHelper
                                                .fillPrimary,
                                            alignment:
                                            Alignment.bottomRight,
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCamera))
                                       ])),
                               Padding(
                                   padding: getPadding(top: 19),
                                   child: Text(
                                       "lbl_john_abram".tr.toUpperCase(),
                                       style: theme.textTheme.titleLarge)),
                               Padding(
                                   padding: getPadding(top: 9),
                                   child: Text(
                                       "msg_johnabram_gmail_com".tr,
                                       style: theme.textTheme.bodyLarge)),
                               Padding(
                                   padding: getPadding(top: 35),
                                   child: Column(
                                       crossAxisAlignment:
                                       CrossAxisAlignment.start,
                                       mainAxisAlignment:
                                       MainAxisAlignment.start,
                                       children: [
                                        Text("lbl_first_name".tr,
                                            style: theme
                                                .textTheme.bodyLarge),
                                        CustomTextFormField(
                                            controller: controller
                                                .firstNameController,
                                            margin: getMargin(top: 6),
                                            hintText: "lbl_first_name".tr,
                                          )
                                       ])),
                               Padding(
                                   padding: getPadding(top: 26),
                                   child: Column(
                                       crossAxisAlignment:
                                       CrossAxisAlignment.start,
                                       mainAxisAlignment:
                                       MainAxisAlignment.start,
                                       children: [
                                        Text("lbl_last_name".tr,
                                            style: theme
                                                .textTheme.bodyLarge),
                                        CustomTextFormField(
                                            controller: controller
                                                .lastNameController,
                                            margin: getMargin(top: 6),
                                            hintText: "lbl_last_name".tr,
                                          )
                                       ])),
                               Padding(
                                   padding: getPadding(top: 26, bottom: 5),
                                   child: Column(
                                       crossAxisAlignment:
                                       CrossAxisAlignment.start,
                                       mainAxisAlignment:
                                       MainAxisAlignment.start,
                                       children: [
                                        Text("lbl_email_address".tr,
                                            style: theme
                                                .textTheme.bodyLarge),
                                        CustomTextFormField(
                                            controller: controller
                                                .emailController,
                                            margin: getMargin(top: 6),
                                            hintText:
                                            "lbl_email_address"
                                                .tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeOnError,
                                            textInputAction:
                                            TextInputAction.done,
                                            textInputType: TextInputType
                                                .emailAddress,
                                            validator: (value) {
                                             if (value == null ||
                                                 (!isValidEmail(value,
                                                     isRequired:
                                                     true))) {
                                              return "Please enter valid email";
                                             }
                                             return null;
                                            })
                                       ]))
                              ]))
                     ]))),
       ),
       bottomNavigationBar: Container(
           margin: getMargin(left: 20, right: 20, bottom: 24),
           decoration: AppDecoration.fillOnErrorContainer,
           child: CustomElevatedButton(
            onTap: () {
              Get.back();
            },
               height: getVerticalSize(54),
               text: "lbl_save".tr.toUpperCase(),
               buttonStyle: CustomButtonStyles.fillPrimary,
               buttonTextStyle: CustomTextStyles
                   .bodyLargeUniformProExtraCondensedOnErrorContainer))),
  );
 }


 onTapArrowleftone() {
  Get.back();
 }
}









