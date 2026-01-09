// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';

import '../../core/expantiontile/src/types/expansion_tile_border_item.dart';
import 'controller/help_controller.dart';





class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  HelpController controller = Get.put(HelpController());
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
              title: AppbarTitle(text: "lbl_help".tr.toUpperCase()),
              styleType: Style.bgFill),
          body: SafeArea(
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ExpansionTileBorderItem(
                          iconColor:PrefUtils().getThemeData() == "primary"?Color(0XFFFFFFFF):Colors.white,
                          // iconColor:Colors.white,
                          childrenPadding:
                          getPadding(left: 20, right: 20, top: 0, bottom: 18),
                          borderRadius:
                          BorderRadius.circular(getHorizontalSize(16)),
                          decoration: AppDecoration.fillOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          title: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_what_is_the_real".tr.toUpperCase(),
                                    style: CustomTextStyles.titleLarge20),
                              ]),
                              textAlign: TextAlign.left),
                          expendedBorderColor: Colors.blue,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: double.infinity,
                                  child: Text("msg_lorem_ipsum_dolor".tr,
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyLarge!
                                          .copyWith(height: 1.56))),
                            )
                          ],
                        ),
                        SizedBox(
                          height: getVerticalSize(16),
                        ),
                  
                  
                  
                        ExpansionTileBorderItem(
                          // collapsedIconColor: appTheme.whiteColor,
                          iconColor: Colors.white,
                          childrenPadding:
                          getPadding(left: 20, right: 20, top: 0, bottom: 18),
                          borderRadius:
                          BorderRadius.circular(getHorizontalSize(16)),
                          decoration: AppDecoration.fillOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          title: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_what_is_a_good_fitness"
                                        .tr
                                        .toUpperCase(),
                                    style: CustomTextStyles.titleLarge20),
                              ]),
                              textAlign: TextAlign.left),
                          expendedBorderColor: Colors.blue,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: double.infinity,
                                  child: Text("msg_lorem_ipsum_dolor".tr,
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyLarge!
                                          .copyWith(height: 1.56))),
                            )
                          ],
                        ),
                        SizedBox(
                          height: getVerticalSize(16),
                        ),
                        ExpansionTileBorderItem(
                          // collapsedIconColor: appTheme.whiteColor,
                          iconColor: appTheme.whiteColor,
                          childrenPadding:
                          getPadding(left: 20, right: 20, top: 0, bottom: 18),
                          borderRadius:
                          BorderRadius.circular(getHorizontalSize(16)),
                          decoration: AppDecoration.fillOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          title: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_what_is_fitness".tr.toUpperCase(),
                                    style: CustomTextStyles.titleLarge20),
                              ]),
                              textAlign: TextAlign.left),
                          expendedBorderColor: Colors.blue,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: double.infinity,
                                  child: Text("msg_lorem_ipsum_dolor".tr,
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyLarge!
                                          .copyWith(height: 1.56))),
                            )
                          ],
                        ),
                        SizedBox(
                          height: getVerticalSize(16),
                        ),
                        ExpansionTileBorderItem(
                          // collapsedIconColor: appTheme.whiteColor,
                          iconColor: appTheme.whiteColor,
                          childrenPadding:
                          getPadding(left: 20, right: 20, top: 0, bottom: 18),
                          borderRadius:
                          BorderRadius.circular(getHorizontalSize(16)),
                          decoration: AppDecoration.fillOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          title: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_what_is_fitness2".tr.toUpperCase(),
                                    style: CustomTextStyles.titleLarge20),
                              ]),
                              textAlign: TextAlign.left),
                          expendedBorderColor: Colors.blue,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: double.infinity,
                                  child: Text("msg_lorem_ipsum_dolor".tr,
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyLarge!
                                          .copyWith(height: 1.56))),
                            )
                          ],
                        ),
                        SizedBox(
                          height: getVerticalSize(16),
                        ),
                        ExpansionTileBorderItem(
                          // collapsedIconColor: appTheme.whiteColor,
                          iconColor: appTheme.whiteColor,
                          childrenPadding:
                          getPadding(left: 20, right: 20, top: 0, bottom: 18),
                          borderRadius:
                          BorderRadius.circular(getHorizontalSize(16)),
                          decoration: AppDecoration.fillOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          title: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_what_is_fitness3".tr.toUpperCase(),
                                    style: CustomTextStyles.titleLarge20),
                              ]),
                              textAlign: TextAlign.left),
                          expendedBorderColor: Colors.blue,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: double.infinity,
                                  child: Text("msg_lorem_ipsum_dolor".tr,
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyLarge!
                                          .copyWith(height: 1.56))),
                            )
                          ],
                        ),
                      ]),
                )),
          )),
    );
  }


  onTapArrowleftone() {
    Get.back();
  }
}

