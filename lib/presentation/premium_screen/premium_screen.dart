// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';

import '../premium_screen/widgets/subscriptionpla_item_widget.dart';
import 'controller/premium_controller.dart';
import 'models/subscriptionpla_item_model.dart';





class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
 PremiumController controller = Get.put(PremiumController());
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
            title: AppbarTitle(text: "lbl_premium".tr.toUpperCase()),
            styleType: Style.bgFill),
        body: SafeArea(
          child: Padding(
              padding: getPadding(left: 20, top: 16, right: 20),
              child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: getVerticalSize(16));
                  },
                  itemCount: controller.premiumData.length,
                  itemBuilder: (context, index) {
                    SubscriptionplaItemModel model = controller.premiumData[index];
                    return SubscriptionplaItemWidget(model);
                  })),
        ),
        bottomNavigationBar: Container(
            margin: getMargin(left: 20, right: 20, bottom: 24),
            decoration: AppDecoration.fillOnErrorContainer,
            child: CustomElevatedButton(
                height: getVerticalSize(54),
                text: "lbl_pay_now".tr.toUpperCase(),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles
                    .bodyLargeUniformProExtraCondensedOnErrorContainer,
                onTap: () {
                 onTapPaynow();
                }))),
  );
 }

 onTapArrowleftone() {
  Get.back();
 }

 onTapPaynow() {
  Get.toNamed(
   AppRoutes.selectPaymentMethodScreen,
  );
 }
}






