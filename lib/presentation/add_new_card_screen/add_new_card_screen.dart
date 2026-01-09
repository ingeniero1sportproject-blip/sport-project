// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/core/utils/validation_functions.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gym_app/widgets/custom_drop_down.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';
import 'package:gym_app/widgets/custom_text_form_field.dart';

import 'controller/add_new_card_controller.dart';



class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({super.key});

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
 GlobalKey<FormState> _formKey = GlobalKey<FormState>();
 AddNewCardController controller = Get.put(AddNewCardController());
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
            title: AppbarTitle(text: "lbl_add_new_card2".tr.toUpperCase()),
            styleType: Style.bgFill),
        body: SafeArea(
          child: Form(
              key: _formKey,
              child: Container(
                  width: double.maxFinite,
                  padding:
                  getPadding(left: 20, top: 27, right: 20, bottom: 27),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                            Text("msg_select_card_type".tr,
                                style: theme.textTheme.bodyLarge),
                            CustomDropDown(
                                icon: Container(
                                    margin: getMargin(left: 30, right: 16),
                                    child: CustomImageView(
                                        svgPath:
                                        ImageConstant.imgArrowdown)),
                                margin: getMargin(top: 5),
                                hintText: "lbl_test".tr,
                                hintStyle:
                                CustomTextStyles.bodyLargeGray600,
                                items: controller.addNewCardModelObj.value
                                    .dropdownItemList.value,
                                onChanged: (value) {
                                 controller.onSelected(value);
                                })
                           ]),
                       Padding(
                           padding: getPadding(top: 26),
                           child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                Text("msg_card_holder_name".tr,
                                    style: theme.textTheme.bodyLarge),
                                CustomTextFormField(
                                    controller: controller.nameController,
                                    margin: getMargin(top: 6),
                                    hintText: "msg_card_holder_name".tr,
                                    hintStyle:
                                    CustomTextStyles.bodyLargeGray600,
                                    validator: (value) {
                                     if (!isText(value)) {
                                      return "Please enter valid text";
                                     }
                                     return null;
                                    })
                               ])),
                       Padding(
                           padding: getPadding(top: 26),
                           child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                Text("lbl_card_number".tr,
                                    style: theme.textTheme.bodyLarge),
                                CustomTextFormField(
                                    controller:
                                    controller.cardNumberController,
                                    margin: getMargin(top: 6),
                                    hintText: "lbl_card_number2".tr,
                                    hintStyle:
                                    CustomTextStyles.bodyLargeGray600,
                                    textInputType: TextInputType.number,
                                    validator: (value) {
                                     if (!isNumeric(value)) {
                                      return "Please enter valid number";
                                     }
                                     return null;
                                    })
                               ])),
                       Padding(
                           padding: getPadding(top: 26, bottom: 5),
                           child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                Expanded(
                                    child: Padding(
                                        padding:
                                        getPadding(top: 1, right: 8),
                                        child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                             Text("lbl_expiray_date".tr,
                                                 style: theme
                                                     .textTheme.bodyLarge),
                                             CustomTextFormField(
                                                 width: getHorizontalSize(
                                                     179),
                                                 controller: controller
                                                     .dateController,
                                                 margin: getMargin(top: 5),
                                                 hintText:
                                                 "lbl_expiray_date".tr,
                                                 hintStyle:
                                                 CustomTextStyles
                                                     .bodyLargeGray600)
                                            ]))),
                                Expanded(
                                    child: Padding(
                                        padding: getPadding(left: 8),
                                        child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                             Text("lbl_cvv".tr,
                                                 style: theme
                                                     .textTheme.bodyLarge),
                                             CustomTextFormField(
                                                 width: getHorizontalSize(
                                                     179),
                                                 controller: controller
                                                     .cvvController,
                                                 margin: getMargin(top: 6),
                                                 hintText: "lbl_cvv".tr,
                                                 hintStyle:
                                                 CustomTextStyles
                                                     .bodyLargeGray600,
                                                 textInputAction:
                                                 TextInputAction.done)
                                            ])))
                               ]))
                      ]))),
        ),
        bottomNavigationBar: Container(
            margin: getMargin(left: 20, right: 20, bottom: 24),
            decoration: AppDecoration.fillOnErrorContainer,
            child: CustomElevatedButton(
                height: getVerticalSize(54),
                text: "lbl_add".tr.toUpperCase(),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles
                    .bodyLargeUniformProExtraCondensedOnErrorContainer,
                onTap: () {
                 onTapAdd();
                }))),
  );
 }


 onTapArrowleftone() {
  Get.back();
 }

 onTapAdd() {
 Get.back();
 }
}






