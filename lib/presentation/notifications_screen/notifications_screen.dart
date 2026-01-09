// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gym_app/widgets/custom_icon_button.dart';
import 'controller/notifications_controller.dart';
import 'models/notifications_model.dart';




class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
 NotificationsController notificationsController = Get.put(NotificationsController());
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
                margin: getMargin( top: 26, bottom: 26),
                onTap: () {
                 onTapArrowleftone();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_notifications".tr.toUpperCase()),
            styleType: Style.bgFill),
        body: SafeArea(
          child: GetBuilder<NotificationsController>(
           init: NotificationsController(),
              builder:(controller) =>  Container(
                width: double.maxFinite,
                padding: getPadding(top: 16, bottom: 16),
                child: ListView.builder(
              padding: getPadding(left: 20,right: 20),
                 itemCount: controller.notification.length,
                 itemBuilder: (context, index) {
                  NotificationsModel data = controller.notification[index];
                  return Padding(
                    padding: getPadding(top: 8,bottom: 8),
                    child: Container(
              
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16),
                        child: Padding(
                          padding: getPadding(left: 8,right: 12,top: 8,bottom: 8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                             Row(
                               children: [
                                 CustomIconButton(
                                     height: getSize(53),
                                     width: getSize(53),
                                     padding: getPadding(all: 14),
                                     decoration: IconButtonStyleHelper
                                         .fillPrimaryContainer,
                                     child: CustomImageView(
                                         svgPath: ImageConstant
                                             .imgNotificationOnprimarycontainer)),
                                 Padding(
                                     padding: getPadding(left: 12, top: 2),
                                     child: Container(
                                       width: getSize(215),
                                       child: Column(
                                           crossAxisAlignment:
                                           CrossAxisAlignment.start,
                                           mainAxisAlignment:
                                           MainAxisAlignment.start,
                                           children: [
                                             Text(
                                                 data.title!
                                                     .toUpperCase(),
                                                 style: CustomTextStyles
                                                     .bodyLargeUniformProExtraCondensed,
                                             maxLines: 1,),
                                             Padding(
                                                 padding: getPadding(top: 7),
                                                 child: Text(
                                                     data.messege!,
                                                     style: theme
                                                         .textTheme.bodyLarge))
                                           ]),
                                     )),
                               ],
                             ),
                               Padding(
                                   padding: getPadding(
                                       left: 0, top: 4, bottom: 28),
                                   child: Text(data.time!,
                                       style:
                                       CustomTextStyles.bodyLargeGray600))
                              ]),
                        )),
                  );
                },)
              
          ),
          ),
        ),
       ),
  );
 }

 onTapArrowleftone() {
  Get.back();
 }
}








