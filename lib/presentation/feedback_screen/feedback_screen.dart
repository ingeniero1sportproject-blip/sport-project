// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';
import 'package:gym_app/widgets/custom_text_form_field.dart';

import 'controller/feedback_controller.dart';



class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
 FeedbackController controller = Get.put(FeedbackController());
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
            title: AppbarTitle(text: "lbl_feedback2".tr.toUpperCase()),
            styleType: Style.bgFill),
        body: SafeArea(
          child: Container(
              width: double.maxFinite,
              padding: getPadding(left: 20, top: 27, right: 20, bottom: 27),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   Text("msg_what_do_you_like".tr.toUpperCase(),
                       style: CustomTextStyles.titleLarge20),
                   CustomTextFormField(
                       controller: controller.answeroneController,
                       margin: getMargin(top: 21, bottom: 5),
                       hintText: "msg_write_your_feedback".tr,
                       hintStyle: CustomTextStyles.bodyLargeGray600,
                       textInputAction: TextInputAction.done,
                       maxLines: 6)
                  ])),
        ),
        bottomNavigationBar: Container(
            margin: getMargin(left: 20, right: 20, bottom: 24),
            decoration: AppDecoration.fillOnErrorContainer,
            child: CustomElevatedButton(
             onTap: () {
               Get.back();
             },
                height: getVerticalSize(54),
                text: "lbl_submit".tr.toUpperCase(),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles
                    .bodyLargeUniformProExtraCondensedOnErrorContainer))),
  );
 }

 onTapArrowleftone() {
  Get.back();
 }
}





