// ignore_for_file: deprecated_member_use, duplicate_ignore

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';

import 'controller/select_payment_method_controller.dart';
import 'models/select_payment_method_model.dart';


class SelectPaymentMethodScreen extends StatefulWidget {
  const SelectPaymentMethodScreen({super.key});

  @override
  State<SelectPaymentMethodScreen> createState() => _SelectPaymentMethodScreenState();
}

class _SelectPaymentMethodScreenState extends State<SelectPaymentMethodScreen> {
  SelectPaymentMethodController selectPaymentMethodController = Get.put(SelectPaymentMethodController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async{
        Get.back();
        return true;
      },
      child: Scaffold(
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
              title: AppbarTitle(
                  text: "msg_select_payment_method".tr.toUpperCase()),
              styleType: Style.bgFill),
          body: SafeArea(
            child: GetBuilder<SelectPaymentMethodController>(
              init: SelectPaymentMethodController(),
              builder:(controller) =>  Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                  child: Column(
                    children: [
                      ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: controller.paymentMethod.length,
                        itemBuilder: (context, index) {
                          SelectPaymentMethodModel data = controller.paymentMethod[index];
                        return Padding(
                          padding: getPadding(top: 8,bottom: 8),
                          child: GestureDetector(
                            onTap: (){
                              controller.currentPayment = data.id!;
                              controller.update();
                            },
                            child: Container(
                              decoration: AppDecoration.fillOnPrimary.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder16),
                              child: Padding(
                                padding: getPadding(all: 16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Row(
                                      children: [
                                        CustomImageView(
                                            svgPath:controller.currentPayment == data.id!?ImageConstant.imgRadioSelected: ImageConstant.imgRadioUnSelected,
                                            height: getSize(24),
                                            width: getSize(24)),
                                        SizedBox(width: getHorizontalSize(12),),
                                        Text(data.title!,style:  theme.textTheme.bodyLarge,)
                                      ],
                                    ),
                                    index==2?CustomImageView(
                                        svgPath: data.icon,
                                        height: getSize(16),
                                        width: getSize(61)):CustomImageView(
                                        svgPath: data.icon,
                                        height: getSize(40),
                                        width: getSize(40)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },),
                      CustomElevatedButton(
                          height: getVerticalSize(25),
                          width: getHorizontalSize(128),
                          text: "lbl_add_new_card".tr,
                          margin: getMargin(top: 24, bottom: 5),
                          leftIcon: Container(
                              margin: getMargin(right: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgPlus)),
                          buttonStyle: CustomButtonStyles.none,
                          buttonTextStyle: theme.textTheme.bodyLarge!,
                          onTap: () {
                            onTapAddnewcard();
                          })
                    ],
                  )









                  // Column(
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     children: [
                  //       Container(
                  //           padding: getPadding(
                  //               left: 16, top: 8, right: 16, bottom: 8),
                  //           decoration: AppDecoration.fillOnPrimary.copyWith(
                  //               borderRadius: BorderRadiusStyle.roundedBorder16),
                  //           child: Row(
                  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Obx(() => CustomRadioButton(
                  //                     text: "lbl_google_pay".tr,
                  //                     value: "lbl_google_pay".tr,
                  //                     groupValue: controller.radioGroup.value,
                  //                     margin: getMargin(top: 8, bottom: 7),
                  //                     padding: getPadding(top: 1, bottom: 1),
                  //                     onChange: (value) {
                  //                       controller.radioGroup.value = value;
                  //                     })),
                  //                 CustomImageView(
                  //                     svgPath: ImageConstant.imgGooglepay1,
                  //                     height: getSize(40),
                  //                     width: getSize(40))
                  //               ])),
                  //       Container(
                  //           margin: getMargin(top: 16),
                  //           padding: getPadding(
                  //               left: 16, top: 8, right: 16, bottom: 8),
                  //           decoration: AppDecoration.fillOnPrimary.copyWith(
                  //               borderRadius: BorderRadiusStyle.roundedBorder16),
                  //           child: Row(
                  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Obx(() => CustomRadioButton(
                  //                     text: "lbl_apple_pay".tr,
                  //                     value: "lbl_apple_pay".tr,
                  //                     groupValue: controller.radioGroup1.value,
                  //                     margin: getMargin(top: 8, bottom: 7),
                  //                     padding: getPadding(top: 1, bottom: 1),
                  //                     onChange: (value) {
                  //                       controller.radioGroup1.value = value;
                  //                     })),
                  //                 CustomImageView(
                  //                     svgPath: ImageConstant.imgApplepay1,
                  //                     height: getSize(40),
                  //                     width: getSize(40))
                  //               ])),
                  //       Container(
                  //           margin: getMargin(top: 16),
                  //           padding: getPadding(
                  //               left: 16, top: 15, right: 16, bottom: 15),
                  //           decoration: AppDecoration.fillOnPrimary.copyWith(
                  //               borderRadius: BorderRadiusStyle.roundedBorder16),
                  //           child: Row(
                  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Obx(() => CustomRadioButton(
                  //                     text: "lbl_paypal".tr,
                  //                     value: "lbl_paypal".tr,
                  //                     groupValue: controller.radioGroup2.value,
                  //                     margin: getMargin(top: 2),
                  //                     padding: getPadding(top: 1, bottom: 1),
                  //                     onChange: (value) {
                  //                       controller.radioGroup2.value = value;
                  //                     })),
                  //                 CustomImageView(
                  //                     svgPath: ImageConstant.imgGroup4148,
                  //                     height: getVerticalSize(16),
                  //                     width: getHorizontalSize(61),
                  //                     margin: getMargin(top: 5, bottom: 4))
                  //               ])),
                  //       CustomElevatedButton(
                  //           height: getVerticalSize(24),
                  //           width: getHorizontalSize(128),
                  //           text: "lbl_add_new_card".tr,
                  //           margin: getMargin(top: 24, bottom: 5),
                  //           leftIcon: Container(
                  //               margin: getMargin(right: 12),
                  //               child: CustomImageView(
                  //                   svgPath: ImageConstant.imgPlus)),
                  //           buttonStyle: CustomButtonStyles.none,
                  //           buttonTextStyle: theme.textTheme.bodyLarge!,
                  //           onTap: () {
                  //             onTapAddnewcard();
                  //           })
                  //     ])
                  ),
            ),
          ),
          bottomNavigationBar: Container(
              margin: getMargin(left: 20, right: 20, bottom: 24),
              decoration: AppDecoration.fillOnErrorContainer,
              child: CustomElevatedButton(
                  height: getVerticalSize(54),
                  text: "lbl_next2".tr.toUpperCase(),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles
                      .bodyLargeUniformProExtraCondensedOnErrorContainer,
                  onTap: () {
                    onTapNext();
                  }))),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }


  onTapNext() {
    Get.toNamed(
      AppRoutes.confirmPaymentScreen,
    );
  }

  onTapAddnewcard() {
    Get.toNamed(
      AppRoutes.addNewCardScreen,
    );
  }
}








