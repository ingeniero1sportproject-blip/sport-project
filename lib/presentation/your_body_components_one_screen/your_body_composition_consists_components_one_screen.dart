// ignore_for_file: deprecated_member_use

import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_image_3.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';

import 'controller/your_body_components_one_controller.dart';

class YourBodyCompositionConsistsComponentsOneScreen extends StatefulWidget {
  const YourBodyCompositionConsistsComponentsOneScreen({super.key});

  @override
  State<YourBodyCompositionConsistsComponentsOneScreen> createState() =>
      _YourBodyCompositionConsistsComponentsOneScreenState();
}

class _YourBodyCompositionConsistsComponentsOneScreenState
    extends State<YourBodyCompositionConsistsComponentsOneScreen> {
  YourBodyCompositionConsistsComponentsOneController
      yourBodyCompositionConsistsComponentsOneController =
      Get.put(YourBodyCompositionConsistsComponentsOneController());
  bool blockScroll = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return true;
      },
      child: Scaffold(
              backgroundColor: theme.colorScheme.onErrorContainer,
              // appBar: CustomAppBar(
              //     leadingWidth: getHorizontalSize(44),
              //     leading: AppbarImage(
              //         svgPath: ImageConstant.imgArrowleft,
              //         margin: getMargin(left: 20, top: 26, bottom: 26),
              //         onTap: () {
              //           onTapArrowleftone();
              //         }),
              //     centerTitle: true,
              //     title: AppbarTitle(text: "lbl_details".tr.toUpperCase()),
              //     actions: [
              //       AppbarImage3(
              //           svgPath: ImageConstant.imgIccopy,
              //           margin:
              //               getMargin(left: 20, top: 26, right: 20, bottom: 26))
              //     ],
              //     styleType: Style.bgFill),
              body: SafeArea(
                child: GetBuilder<YourBodyCompositionConsistsComponentsOneController>(
                      init: YourBodyCompositionConsistsComponentsOneController(),
                      builder: (controller) => SizedBox(
                          width: double.maxFinite,
                          child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                            Expanded(
                child: CustomScrollView(
                  shrinkWrap: true,
                  primary: true,
                  physics: blockScroll
                      ? NeverScrollableScrollPhysics()
                      : BouncingScrollPhysics(),
                  slivers: [
                    SliverAppBar(
                      toolbarHeight: getSize(58),
                      backgroundColor: Colors.transparent,
                      expandedHeight: getSize(500),
                      leadingWidth: getSize(44),
                      leading: AppbarImage(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: getMargin(left: 20, top: 5, bottom: 3),
                          onTap: () {
                            onTapArrowleftone();
                          }),
                      centerTitle: true,
                      title:
                          AppbarTitle(text: "lbl_details".tr.toUpperCase()),
                      // .marginOnly(
                      // top: 21.h, bottom: 13.h, left: 20.h),
                      actions: [
                        AppbarImage3(
                            svgPath: ImageConstant.imgIccopy,
                            margin: getMargin(
                                left: 20, top: 0, right: 20, bottom: 0))
                      ],
                      flexibleSpace: FlexibleSpaceBar(
                        background: Stack(
                          children: [
                            Container(
                              height: getSize(300),
                              child: CustomImageView(
                                imagePath: controller.currentWorkout!.image,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              height: getSize(300),
                              width: double.infinity,
                              color: Colors.black.withOpacity(0.20),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: getPadding(
                                    left: 0, right: 0, bottom: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      color: Colors.black.withOpacity(0.10),
                                      width: double.infinity,
                                      child: Padding(
                                        padding:getPadding(left: 20,right: 20,top: 10,bottom: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "lbl_goal".tr.toUpperCase(),
                                                  style: CustomTextStyles
                                                      .bodyLargeUniformProExtraCondensed,
                                                ),
                                                Padding(
                                                    padding: getPadding(top: 9),
                                                    child: Text("lbl_fat_loss2".tr,
                                                        style: theme
                                                            .textTheme.bodyLarge))
                                              ],
                                            ),
                                            SizedBox(
                                                height: getVerticalSize(54),
                                                child: VerticalDivider(
                                                    width: getHorizontalSize(1),
                                                    thickness: getVerticalSize(1),
                                                    color:
                                                        theme.colorScheme.onError)),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text("lbl_duration".tr.toUpperCase(),
                                                    style: CustomTextStyles
                                                        .bodyLargeUniformProExtraCondensed),
                                                Padding(
                                                    padding: getPadding(top: 9),
                                                    child: Text(
                                                        "Weeks ${controller.currentWorkout!.timeOfweeks!}",
                                                        style: theme
                                                            .textTheme.bodyLarge))
                                              ],
                                            ),
                                            SizedBox(
                                                height: getVerticalSize(54),
                                                child: VerticalDivider(
                                                    width: getHorizontalSize(1),
                                                    thickness: getVerticalSize(1),
                                                    color:
                                                        theme.colorScheme.onError)),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text("lbl_level2".tr.toUpperCase(),
                                                    style: CustomTextStyles
                                                        .bodyLargeUniformProExtraCondensed),
                                                Padding(
                                                    padding: getPadding(top: 9),
                                                    child: Text(
                                                        controller
                                                            .currentWorkout!.level!,
                                                        style: theme
                                                            .textTheme.bodyLarge))
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(left: 20,right: 20),
                                      child: Container(
                                          margin: getMargin(top: 16),
                                          padding: getPadding(
                                              left: 16, top: 17, right: 16, bottom: 17),
                                          decoration: AppDecoration.fillOnPrimary
                                              .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder16),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                          "lbl_introduction"
                                                              .tr
                                                              .toUpperCase(),
                                                          style: theme
                                                              .textTheme.titleLarge),
                                                      CustomImageView(
                                                          onTap: () {
                                                            Get.toNamed(AppRoutes
                                                                .introductionScreen);
                                                          },
                                                          svgPath: ImageConstant
                                                              .imgArrowright,
                                                          height: getSize(24),
                                                          width: getSize(24),
                                                          margin: getMargin(top: 2))
                                                    ]),
                                                Container(
                                                    width: double.infinity,
                                                    margin:
                                                    getMargin(top: 24, right: 46),
                                                    child: Text(
                                                        "msg_contrary_to_popular".tr,
                                                        maxLines: 3,
                                                        overflow: TextOverflow.ellipsis,
                                                        style: theme
                                                            .textTheme.bodyLarge!
                                                            .copyWith(height: 1.56))),
                                                Padding(
                                                    padding: getPadding(top: 15),
                                                    child: Container(
                                                        height: getVerticalSize(8),
                                                        width: double.infinity,
                                                        decoration: BoxDecoration(
                                                            color: appTheme.gray600,
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    4))),
                                                        child: ClipRRect(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    4)),
                                                            child: LinearProgressIndicator(
                                                                value: 0.5,
                                                                backgroundColor:
                                                                appTheme.gray600,
                                                                valueColor:
                                                                AlwaysStoppedAnimation<Color>(
                                                                    theme
                                                                        .colorScheme
                                                                        .primary))))),
                                                Padding(
                                                    padding: getPadding(top: 11),
                                                    child: Text("lbl_50_complate".tr,
                                                        style:
                                                        theme.textTheme.bodyLarge))
                                              ])),
                                    ),
                                  ],
                                ),
                              ),
                            )
                      
                          ],
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate([
                        ListView(
                          padding: getPadding(left: 20, right: 20),
                          primary: false,
                          shrinkWrap: true,
                          physics:  NeverScrollableScrollPhysics(),
                          children: [
                      
                            Padding(
                                padding: getPadding(top: 0),
                                child: ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(16));
                                    },
                                    itemCount: controller
                                        .currentWorkout!.timeOfweeks!,
                                    itemBuilder: (context, index) {
                                      // Listgroup38214ItemModel model = controller
                                      //     .yourBodyCompositionConsistsComponentsOneModelObj
                                      //     .value
                                      //     .listgroup38214ItemList
                                      //     .value[index];
                                      return animation_function(
                                          index,
                                          GestureDetector(
                                            onTap: () {
                                              onTapWeekday.call();
                                            },
                                            child: Container(
                                              padding: getPadding(
                                                  top: 16, bottom: 16),
                                              decoration: AppDecoration
                                                  .fillOnPrimary
                                                  .copyWith(
                                                borderRadius:
                                                    BorderRadiusStyle
                                                        .roundedBorder16,
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  AnotherStepper(
                                                    iconHeight: 32,
                                                    iconWidth: 32,
                                                    stepperDirection:
                                                        Axis.horizontal,
                                                    activeIndex: 1,
                                                    barThickness: 2,
                                                    activeBarColor: theme
                                                        .colorScheme.primary,
                                                    inActiveBarColor: theme
                                                        .colorScheme
                                                        .primaryContainer,
                                                    inverted: true,
                                                    stepperList: [
                                                      StepperData(
                                                        iconWidget: InkWell(
                                                          onTap: () {
                                                            Get.toNamed(AppRoutes
                                                                .week1DayOneScreen);
                                                          },
                                                          child: Container(
                                                            padding:
                                                                getPadding(
                                                              left: 0,
                                                              top: 5,
                                                              right: 0,
                                                              bottom: 5,
                                                            ),
                                                            decoration:
                                                                AppDecoration
                                                                    .fillPrimary
                                                                    .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder8,
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                "lbl_1".tr,
                                                                style: CustomTextStyles
                                                                    .bodyLargeOnErrorContainer,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      StepperData(
                                                        iconWidget: InkWell(
                                                          onTap: () {
                                                            Get.toNamed(AppRoutes
                                                                .week1DayOneScreen);
                                                          },
                                                          child: Container(
                                                            padding:
                                                                getPadding(
                                                              left: 0,
                                                              top: 5,
                                                              right: 0,
                                                              bottom: 5,
                                                            ),
                                                            decoration:
                                                                AppDecoration
                                                                    .fillPrimary
                                                                    .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder8,
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                "lbl_2".tr,
                                                                style: CustomTextStyles
                                                                    .bodyLargeOnErrorContainer,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      StepperData(
                                                        iconWidget: InkWell(
                                                          onTap: () {
                                                            Get.toNamed(AppRoutes
                                                                .week1DayOneScreen);
                                                          },
                                                          child: Container(
                                                            padding:
                                                                getPadding(
                                                              left: 0,
                                                              top: 5,
                                                              right: 0,
                                                              bottom: 5,
                                                            ),
                                                            decoration:
                                                                AppDecoration
                                                                    .fillPrimaryContainer
                                                                    .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder8,
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                "lbl_3".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      StepperData(
                                                        iconWidget: InkWell(
                                                          onTap: () {
                                                            Get.toNamed(AppRoutes
                                                                .week1DayOneScreen);
                                                          },
                                                          child: Container(
                                                            padding:
                                                                getPadding(
                                                              left: 0,
                                                              top: 5,
                                                              right: 0,
                                                              bottom: 5,
                                                            ),
                                                            decoration:
                                                                AppDecoration
                                                                    .fillPrimaryContainer
                                                                    .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder8,
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                "lbl_4".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                        top: 19,
                                                        bottom: 5,
                                                        left: 16,
                                                        right: 16),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Week ${index + 1}"
                                                              .toUpperCase(),
                                                          // style: theme.textTheme.titleLarge,
                                                          style: CustomTextStyles
                                                              .bodyMediumSfproDisplay22,
                                                        ),
                                                        Text(
                                                          "lbl_4_days"
                                                              .tr
                                                              .toUpperCase(),
                                                          // style: theme.textTheme.titleLarge,
                                                          style: CustomTextStyles
                                                              .bodyMediumSfproDisplay22,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ));
                                    }))
                          ],
                        ),
                      ]),
                    ),
                  ],
                ),
                            )
                          ])),
                ),
              ),
            ),
    );
  }

  onTapWeekday() {
    Get.toNamed(AppRoutes.yourBodyCompositionConsistsComponentsScreen);
  }

  onTapArrowleftone() {
    Get.back();
  }
}
