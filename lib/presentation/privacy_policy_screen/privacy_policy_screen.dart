// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';

import 'controller/privacy_policy_controller.dart';


class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
 PrivacyPolicyController controller = Get.put(PrivacyPolicyController());
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
            title: AppbarTitle(text: "lbl_privacy_policy".tr.toUpperCase()),
            styleType: Style.bgFill),
        body: SafeArea(
          child: Container(
              width: double.maxFinite,
              padding: getPadding(left: 20, top: 27, right: 20, bottom: 27),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   Text("msg_types_of_data_we".tr.toUpperCase(),
                       style: theme.textTheme.titleLarge),
                   Container(
                       width: getHorizontalSize(366),
                       margin: getMargin(top: 16, right: 7),
                       child: Text("msg_torem_ipsum_dolor".tr,
                           maxLines: 4,
                           overflow: TextOverflow.ellipsis,
                           style: theme.textTheme.bodyLarge!
                               .copyWith(height: 1.56))),
                   Padding(
                       padding: getPadding(top: 28),
                       child: Text(
                           "msg_use_of_your_personal".tr.toUpperCase(),
                           style: theme.textTheme.titleLarge)),
                   Container(
                       width: getHorizontalSize(366),
                       margin: getMargin(top: 16, right: 7),
                       child: Text("msg_torem_ipsum_dolor".tr,
                           maxLines: 4,
                           overflow: TextOverflow.ellipsis,
                           style: theme.textTheme.bodyLarge!
                               .copyWith(height: 1.56))),
                   Padding(
                       padding: getPadding(top: 28),
                       child: Text("msg_disclosure_of_your".tr.toUpperCase(),
                           style: theme.textTheme.titleLarge)),
                   Container(
                       width: getHorizontalSize(374),
                       margin: getMargin(top: 16, bottom: 5),
                       child: Text("msg_lorem_ipsum_dolor2".tr,
                           maxLines: 10,
                           overflow: TextOverflow.ellipsis,
                           style: theme.textTheme.bodyLarge!
                               .copyWith(height: 1.56)))
                  ])),
        )),
  );
 }


 onTapArrowleftone() {
  Get.back();
 }
}




