// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';

import '../week_one_screen/widgets/dayexercise_item_widget.dart';
import 'controller/week_one_controller.dart';
import 'models/dayexercise_item_model.dart';




class WeekOneScreen extends StatefulWidget {
  const WeekOneScreen({super.key});

  @override
  State<WeekOneScreen> createState() => _WeekOneScreenState();
}

class _WeekOneScreenState extends State<WeekOneScreen> {
 WeekOneController controller = Get.put(WeekOneController());
 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return WillPopScope(
    onWillPop: ()async {
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
            title: AppbarTitle(text: "lbl_week_1".tr.toUpperCase()),
            styleType: Style.bgFill),
        body: SafeArea(
          child: Container(
              width: double.maxFinite,
              padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   Expanded(
                       child: GridView.builder(
                           shrinkWrap: true,
                           gridDelegate:
                           SliverGridDelegateWithFixedCrossAxisCount(
                               mainAxisExtent: getVerticalSize(92),
                               crossAxisCount: 2,
                               mainAxisSpacing: getHorizontalSize(16),
                               crossAxisSpacing: getHorizontalSize(16)),
                           physics: NeverScrollableScrollPhysics(),
                           itemCount: controller.getweekList.length,
                           itemBuilder: (context, index) {
                            DayexerciseItemModel model = controller.getweekList[index];
                            return animation_function(index, DayexerciseItemWidget(model,index,
                                onTapImgAddImage: () {
                                  onTapImgAddImage();
                                }));
                           })),
              
                  ])),
        )),
  );
 }

 onTapImgAddImage() {
  Get.toNamed(AppRoutes.selectMuscleScreen);
 }

 onTapArrowleftone() {
  Get.back();
 }
}













