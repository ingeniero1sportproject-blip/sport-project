// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';

import '../health_tips_screen/widgets/healthdefinitio_item_widget.dart';
import 'controller/health_tips_controller.dart';
import 'models/healthdefinitio_item_model.dart';


class HealthTipsScreen extends StatefulWidget {
  const HealthTipsScreen({super.key});

  @override
  State<HealthTipsScreen> createState() => _HealthTipsScreenState();
}

class _HealthTipsScreenState extends State<HealthTipsScreen> {
 HealthTipsController controller = Get.put(HealthTipsController());
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
            title: AppbarTitle(text: "lbl_health_tips2".tr.toUpperCase()),
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
                  itemCount: controller.heithTips.length,
                  itemBuilder: (context, index) {
                    HealthdefinitioItemModel model = controller.heithTips[index];
                    return animation_function(index, HealthdefinitioItemWidget(model));
                  })),
        )),
  );
 }

 onTapArrowleftone() {
  Get.back();
 }
}






