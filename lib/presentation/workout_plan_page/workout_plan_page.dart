// ignore_for_file: deprecated_member_use, duplicate_ignore

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';
import 'package:gym_app/widgets/custom_icon_button.dart';

import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../your_body_components_one_screen/controller/your_body_components_one_controller.dart';
import 'controller/workout_plan_controller.dart';
import 'models/workout_plan_model.dart';

// ignore_for_file: must_be_immutable
class WorkoutPlanPage extends StatefulWidget {
  bool isNavigateHomeTab;
  WorkoutPlanPage({Key? key,this.isNavigateHomeTab = false}) : super(key: key);

  @override
  State<WorkoutPlanPage> createState() => _WorkoutPlanPageState();
}

class _WorkoutPlanPageState extends State<WorkoutPlanPage> {
  WorkoutPlanController controller =
      Get.put(WorkoutPlanController());
  YourBodyCompositionConsistsComponentsOneController yourBodyCompositionConsistsComponentsOneController = Get.put(YourBodyCompositionConsistsComponentsOneController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return  !widget.isNavigateHomeTab
        ? WillPopScope(
        onWillPop: () async {
          Get.back();
          return false;
        },
        child: Scaffold(
          backgroundColor: theme.colorScheme.onErrorContainer,
          appBar: CustomAppBar(
              leadingWidth: getHorizontalSize(44),
              leading: AppbarImage(
                  svgPath: ImageConstant.imgArrowleft,
                  margin: getMargin(left: 20, top: 26, bottom: 26),
                  onTap: () {
                    Get.back();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_workout_plan2".tr.toUpperCase()),
              styleType: Style.bgFill),
          body: Padding(
            padding: getPadding(bottom: 16),
            child: getColumn(),
          ),)):GetBuilder<WorkoutPlanController>(
      init: WorkoutPlanController(),
      builder:(controller) =>  Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Padding(
              padding: getPadding(left: 0, bottom: 5),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(top: 16, bottom: 16),
                      child: Center(
                        child: Text("lbl_workout_plan2".tr.toUpperCase(),
                            style: theme.textTheme.headlineMedium),
                      ),
                    ),
                    Expanded(
                      child: getColumn()
                    )
                  ]))),
    );
  }

  onTapAddplan() {
    Get.toNamed(
      AppRoutes.createPlanScreen,
    );
  }

  Widget getColumn(){
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding:
                getPadding(top: 16, right: 20, left: 20),
                child: Row(children: [
                  Expanded(
                    child: CustomElevatedButton(
                        height: getVerticalSize(72),
                        text: "lbl_find_plan".tr,
                        leftIcon: Container(
                            margin: getMargin(right: 24),
                            child: CustomImageView(
                                svgPath:
                                ImageConstant.imgMenu)),
                        buttonStyle:
                        CustomButtonStyles.fillOnPrimary,
                        buttonTextStyle:
                        theme.textTheme.bodyLarge!,
                        onTap: () {
                          Get.toNamed(AppRoutes.findAWorkoutPlanOneScreen);
                        }),
                  ),
                  SizedBox(
                    width: getHorizontalSize(16),
                  ),
                  Expanded(
                    child: CustomElevatedButton(
                        height: getVerticalSize(72),
                        text: "lbl_add_plan".tr,
                        leftIcon: Container(
                            margin: getMargin(right: 24),
                            child: CustomImageView(
                                svgPath: ImageConstant
                                    .imgPlusPrimary)),
                        buttonStyle:
                        CustomButtonStyles.fillOnPrimary,
                        buttonTextStyle:
                        theme.textTheme.bodyLarge!,
                        onTap: () {
                          onTapAddplan();
                        }),
                  )
                ])),
            Container(
                margin: getMargin(top: 16, right: 20,left: 20),
                padding: getPadding(
                    left: 16, top: 10, right: 16, bottom: 10),
                decoration: AppDecoration.fillOnPrimary
                    .copyWith(
                    borderRadius:
                    BorderRadiusStyle.roundedBorder16),
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          height: getSize(48),
                          width: getSize(48),
                          margin: getMargin(top: 1, bottom: 1),
                          child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant
                                        .imgGlobeOnerrorcontainer,
                                    height: getSize(48),
                                    width: getSize(48),
                                    alignment:
                                    Alignment.center),
                                Align(
                                    alignment:
                                    Alignment.topCenter,
                                    child: Padding(
                                        padding:
                                        getPadding(top: 6),
                                        child: Text(
                                            "lbl_w"
                                                .tr
                                                .toUpperCase(),
                                            style: theme
                                                .textTheme
                                                .headlineMedium)))
                              ])),
                      Padding(
                          padding: getPadding(left: 12, top: 1),
                          child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: [
                                Text("lbl_workout_1".tr,
                                    style: theme
                                        .textTheme.bodyLarge),
                                Padding(
                                    padding: getPadding(top: 8),
                                    child: Row(children: [
                                      Padding(
                                          padding: getPadding(
                                              top: 1),
                                          child: Text(
                                              "lbl_mass_gain"
                                                  .tr,
                                              style: CustomTextStyles
                                                  .bodyLargeGray600)),
                                      Padding(
                                          padding: getPadding(
                                              left: 16),
                                          child: SizedBox(
                                              height:
                                              getVerticalSize(
                                                  20),
                                              child: VerticalDivider(
                                                  width:
                                                  getHorizontalSize(
                                                      1),
                                                  thickness:
                                                  getVerticalSize(
                                                      1),
                                                  color: theme
                                                      .colorScheme
                                                      .onPrimaryContainer
                                                      .withOpacity(
                                                      1),
                                                  indent:
                                                  getHorizontalSize(
                                                      1),
                                                  endIndent:
                                                  getHorizontalSize(
                                                      2)))),
                                      Padding(
                                          padding: getPadding(
                                              left: 16),
                                          child: Text(
                                              "lbl_8_weeks".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeGray600))
                                    ]))
                              ])),
                      Spacer(),
                      CustomImageView(
                          svgPath: ImageConstant.imgTrash,
                          height: getSize(24),
                          width: getSize(24),
                          margin:
                          getMargin(top: 13, bottom: 13))
                    ])),
            Padding(
                padding: getPadding(top: 28,left: 20,right: 20),
                child: Text(
                    "lbl_quick_stretches".tr.toUpperCase(),
                    style: theme.textTheme.titleLarge)),
            SizedBox(height: getVerticalSize(16),),
            SizedBox(
              height: getSize(212),
              child: ListView.builder(
                padding: getPadding(left: 12,right: 12),
                scrollDirection: Axis.horizontal,
                itemCount: controller.quickStretches.length,
                itemBuilder: (context, index) {
                  WorkoutPlanModel data = controller.quickStretches[index];
                  return animation_function(index, getStretchesWidget(data));
                },),
            ),

            Padding(
                padding: getPadding(top: 24,left: 20,right: 20),
                child: Text(
                    "lbl_quick_stretches".tr.toUpperCase(),
                    style: theme.textTheme.titleLarge)),
            SizedBox(height: getVerticalSize(16),),
            SizedBox(
              height: getSize(212),
              child: ListView.builder(
                padding: getPadding(left: 12,right: 12),
                scrollDirection: Axis.horizontal,
                itemCount: controller.quick2ndStretches.length,
                itemBuilder: (context, index) {
                  WorkoutPlanModel data = controller.quick2ndStretches[index];
                  return animation_function(index, getStretchesWidget(data));
                },),
            ),
            Padding(
                padding: getPadding(top: 24,left: 20,right: 20),
                child: Text("lbl_fat_loss".tr.toUpperCase(),
                    style: theme.textTheme.titleLarge)),
            SizedBox(height: getVerticalSize(16),),
            SizedBox(
              height: getSize(212),
              child: ListView.builder(
                padding: getPadding(left: 12,right: 12),
                scrollDirection: Axis.horizontal,
                itemCount: controller.fatLoss.length,
                itemBuilder: (context, index) {
                  WorkoutPlanModel data = controller.fatLoss[index];
                  return animation_function(index, getStretchesWidget(data));
                },),
            ),

            Padding(
                padding: getPadding(top: 24,left: 20,right: 20),
                child: Text(
                    "lbl_muscle_building".tr.toUpperCase(),
                    style: theme.textTheme.titleLarge)),
            SizedBox(height: getVerticalSize(16),),
            SizedBox(
              height: getSize(212),
              child: ListView.builder(
                padding: getPadding(left: 12,right: 12),
                scrollDirection: Axis.horizontal,
                itemCount: controller.muscleBuilding.length,
                itemBuilder: (context, index) {
                  WorkoutPlanModel data = controller.muscleBuilding[index];
                  return animation_function(index, getStretchesWidget(data));
                },),
            ),
            Padding(
                padding: getPadding(top: 24,left: 20,right: 20),
                child: Text("lbl_mass_gain2".tr.toUpperCase(),
                    style: theme.textTheme.titleLarge)),
            SizedBox(height: getVerticalSize(16),),
            SizedBox(
              height: getSize(212),
              child: ListView.builder(
                padding: getPadding(left: 12,right: 12),
                scrollDirection: Axis.horizontal,
                itemCount: controller.massGain.length,
                itemBuilder: (context, index) {
                  WorkoutPlanModel data = controller.massGain[index];
                  return animation_function(index, getStretchesWidget(data));
                },),
            ),
            Padding(
                padding: getPadding(top: 24,left: 20,right: 20),
                child: Text("lbl_powerlifting".tr.toUpperCase(),
                    style: theme.textTheme.titleLarge)),
            SizedBox(height: getVerticalSize(16),),
            SizedBox(
              height: getSize(212),
              child: ListView.builder(
                padding: getPadding(left: 12,right: 12),
                scrollDirection: Axis.horizontal,
                itemCount: controller.powerlifting.length,
                itemBuilder: (context, index) {
                  WorkoutPlanModel data = controller.powerlifting[index];
                  return animation_function(index, getStretchesWidget(data));
                },),
            ),
            Padding(
                padding: getPadding(top: 24,left: 20,right: 20),
                child: Text(
                    "lbl_gain_strength".tr.toUpperCase(),
                    style: theme.textTheme.titleLarge)),
            SizedBox(height: getVerticalSize(16),),
            SizedBox(
              height: getSize(212),
              child: ListView.builder(
                padding: getPadding(left: 12,right: 12),
                scrollDirection: Axis.horizontal,
                itemCount: controller.gainStrength.length,
                itemBuilder: (context, index) {
                  WorkoutPlanModel data = controller.gainStrength[index];
                  return animation_function(index, getStretchesWidget(data));
                },),
            ),
          ],
        ),
      ),
    );
  }


  Widget getStretchesWidget(WorkoutPlanModel data){
    return Padding(
      padding: getPadding(left: 8,right: 8),
      child: GestureDetector(
        onTap: (){
          yourBodyCompositionConsistsComponentsOneController.setCurrentWorkOuut(data);
          Get.toNamed(AppRoutes.yourBodyCompositionConsistsComponentsOneScreen);
        },
        child: Container(
            width: getSize(275),
            padding: getPadding(top: 8,left: 8,right: 8),
            decoration: AppDecoration
                .fillOnPrimary
                .copyWith(
                borderRadius:
                BorderRadiusStyle
                    .roundedBorder16),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                mainAxisAlignment:
                MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width:double.infinity,
                        height: getVerticalSize(131),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(getHorizontalSize(16)),
                            image: DecorationImage(image: AssetImage(data.image!),fit: BoxFit.fill)
                        ),
                      ),
                      data.isPro!?CustomIconButton(
                          height:
                          getSize(24),
                          width:
                          getSize(24),
                          margin: getMargin(
                              top: 8,
                              right: 8),
                          padding:
                          getPadding(
                              all: 4),
                          alignment:
                          Alignment
                              .topRight,
                          child: CustomImageView(
                              svgPath:
                              ImageConstant
                                  .imgPremiumquality)):SizedBox()
                    ],
                  ),
                  Padding(
                      padding:
                      getPadding(top: 8),
                      child: Text(
                          data.title!
                              .toUpperCase(),
                          style: CustomTextStyles
                              .titleLarge20,
                      maxLines: 1,)),
                  Padding(
                      padding: getPadding(
                          left: 4,
                          top: 0,
                          bottom: 1),
                      child: Row(children: [
                        Padding(
                            padding: getPadding(
                                top: 1),
                            child: Text(
                                data.level!,
                                style: CustomTextStyles
                                    .bodyLargeGray600)),
                        Padding(
                            padding: getPadding(
                                left: 16),
                            child: SizedBox(
                                height:
                                getVerticalSize(
                                    20),
                                child: VerticalDivider(
                                    width:
                                    getHorizontalSize(
                                        1),
                                    thickness:
                                    getVerticalSize(
                                        1),
                                    color: theme
                                        .colorScheme
                                        .onPrimaryContainer
                                        .withOpacity(
                                        1),
                                    indent:
                                    getHorizontalSize(
                                        1),
                                    endIndent:
                                    getHorizontalSize(
                                        2)))),
                        Padding(
                            padding: getPadding(
                                left: 16),
                            child: Text(
                                "${data.timeOfweeks!} Weeks",
                                style: CustomTextStyles
                                    .bodyLargeGray600))
                      ]))
                ])),
      ),
    );
  }
}
