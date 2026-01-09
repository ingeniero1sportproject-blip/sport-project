// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gym_app/widgets/custom_drop_down.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';
import 'package:gym_app/widgets/custom_text_form_field.dart';

import 'controller/create_plan_controller.dart';



class CreatePlanScreen extends StatefulWidget {
  const CreatePlanScreen({super.key});

  @override
  State<CreatePlanScreen> createState() => _CreatePlanScreenState();
}

class _CreatePlanScreenState extends State<CreatePlanScreen> {
 CreatePlanController controller = Get.put(CreatePlanController());
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
            title: AppbarTitle(text: "lbl_add_plan2".tr.toUpperCase()),
            styleType: Style.bgFill),
        body: SafeArea(
          child: Container(
              width: double.maxFinite,
              padding: getPadding(left: 20, top: 26, right: 20, bottom: 26),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                        Text("lbl_plan_name".tr,
                            style: theme.textTheme.bodyLarge),
                        CustomTextFormField(
                            controller: controller.nameController,
                            margin: getMargin(top: 6),
                            hintText: "lbl_test".tr,
                            hintStyle: CustomTextStyles.bodyLargeGray600)
                       ]),
                   Padding(
                       padding: getPadding(top: 27),
                       child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                            Text("lbl_description".tr,
                                style: theme.textTheme.bodyLarge),
                            CustomTextFormField(
                                controller:
                                controller.descriptiontwoController,
                                margin: getMargin(top: 5),
                                hintText: "lbl_description".tr,
                               )
                           ])),
                   Padding(
                       padding: getPadding(top: 26),
                       child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                            Text("lbl_goal".tr,
                                style: theme.textTheme.bodyLarge),
                            CustomDropDown(
                                icon: Container(
                                    margin: getMargin(left: 30, right: 16),
                                    child: CustomImageView(
                                        svgPath:
                                        ImageConstant.imgArrowdown)),
                                margin: getMargin(top: 6),
                                hintText: "lbl_select_goal".tr,
                                hintStyle:
                                CustomTextStyles.bodyLargeOnError,
                                items: controller.createPlanModelObj.value
                                    .dropdownItemList.value,
                                onChanged: (value) {
                                 controller.onSelected(value);
                                })
                           ])),
                   Padding(
                       padding: getPadding(top: 26),
                       child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                            Text("lbl_duration".tr,
                                style: theme.textTheme.bodyLarge),
                            CustomTextFormField(
                                controller:
                                controller.durationoneoneController,
                                margin: getMargin(top: 6),
                                hintText: "lbl_duration".tr,
                                hintStyle:
                                CustomTextStyles.bodyLargeGray600,
                                textInputAction: TextInputAction.done)
                           ])),
                   CustomElevatedButton(
                    onTap: (){
                     Get.back();
                    },
                       height: getVerticalSize(54),
                       text: "lbl_add2".tr.toUpperCase(),
                       margin: getMargin(top: 40, bottom: 5),
                       buttonStyle: CustomButtonStyles.fillPrimary,
                       buttonTextStyle: CustomTextStyles
                           .bodyLargeUniformProExtraCondensedOnErrorContainer)
                  ])),
        )),
  );
 }

 onTapArrowleftone() {
  Get.back();
 }
}




