// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gym_app/widgets/custom_icon_button.dart';
import 'controller/full_workout_plan_controller.dart';
import 'models/full_workout_plan_model.dart';
import 'models/more_related_exercise_data_model.dart';
import 'package:video_player/video_player.dart';

class FullWorkoutPlanScreen extends StatefulWidget {
  const FullWorkoutPlanScreen({super.key});

  @override
  State<FullWorkoutPlanScreen> createState() => _FullWorkoutPlanScreenState();
}

class _FullWorkoutPlanScreenState extends State<FullWorkoutPlanScreen> {
  FullWorkoutPlanController fullWorkoutPlanController =
      Get.put(FullWorkoutPlanController());

  late FlickManager flickManager;
  @override
  void initState() {

    super.initState();
    flickManager = FlickManager(
      // ignore: deprecated_member_use
      videoPlayerController: VideoPlayerController.network(
          "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
      autoPlay: true,
      autoInitialize: true,

    );
  }

  @override
  void dispose() {
    flickManager.dispose();

    super.dispose();
  }

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
        title: Padding(
          padding: getPadding(left: 24),
          child: Text(fullWorkoutPlanController.currentPlan!.title!.toUpperCase(),style: CustomTextStyles.bodyMediumSfproDisplay28,),),
        styleType: Style.bgFill),
              body: GetBuilder<FullWorkoutPlanController>(
      init: FullWorkoutPlanController(),
      builder: (controller) => SizedBox(
          width: mediaQueryData.size.width,
          child: SafeArea(
            child: SingleChildScrollView(
                padding: getPadding(top: 0),
                child: Padding(
                    padding: getPadding(left: 0, right: 0, bottom: 5),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                  
                          Padding(
                            padding: getPadding(left: 20,right: 20),
                            child: Container(
                              padding: getPadding(all: 0),
                  
                              decoration: BoxDecoration(
                  
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0XFF23408F).withOpacity(0.1),
                                    blurRadius: 16,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(getHorizontalSize(16)),
                              ),
                              child: Container(
                                  height: getSize(220),
                  
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(getHorizontalSize(16))),
                                  child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(16)),child: FlickVideoPlayer(flickManager: flickManager))),
                            ),
                          ),
                  
                  
                          // Padding(
                          //   padding: getPadding(left: 20, right: 20),
                          //   child: SizedBox(
                          //       height: getVerticalSize(170),
                          //       width: double.infinity,
                          //       child: Stack(
                          //           alignment: Alignment.center,
                          //           children: [
                          //             Container(
                          //               height: getVerticalSize(170),
                          //
                          //               width: double.infinity,
                          //               child: CustomImageView(
                          //                   imagePath:
                          //                       controller.currentPlan!.image,
                          //
                          //                   radius: BorderRadius.circular(
                          //                       getHorizontalSize(16)),
                          //                  ),
                          //             ),
                          //             CustomIconButton(
                          //                 height: getSize(40),
                          //                 width: getSize(40),
                          //                 padding: getPadding(all: 5),
                          //                 decoration: IconButtonStyleHelper
                          //                     .fillPrimaryTL20,
                          //                 alignment: Alignment.center,
                          //                 child: CustomImageView(
                          //                     svgPath: ImageConstant.imgPlay))
                          //           ])),
                          // ),
                          Padding(
                            padding: getPadding(left: 20, right: 20,top: 16),
                            child: Container(
                                margin: getMargin(top: 0),
                                padding: getPadding(
                                    left: 16, top: 16, right: 16, bottom: 9),
                                decoration: AppDecoration.fillOnPrimary
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: getSize(240),
                                                  child: Text(
                                                    controller
                                                        .currentPlan!.title!
                                                        .toUpperCase(),
                                                    style: CustomTextStyles.bodyMediumSfproDisplay22,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                                Padding(
                                                    padding: getPadding(top: 9),
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text: "lbl_level"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge),
                                                          TextSpan(
                                                              text: controller
                                                                  .currentPlan!
                                                                  .level,
                                                              style: CustomTextStyles
                                                                  .bodyLargeGreenA700)
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left))
                                              ])),
                                      Row(
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgPlus,
                                              height: getSize(24),
                                              width: getSize(24),
                                              margin: getMargin(
                                                  top: 16, bottom: 16),
                                              onTap: () {
                                                onTapImgPlusone();
                                              }),
                                          CustomImageView(
                                              onTap: () {
                                                controller.setFav();
                                              },
                                              color:
                                                  controller.currentPlan!.isFav!
                                                      ? appTheme.buttonColor
                                                      : appTheme.whiteColor,
                                              svgPath:
                                                  ImageConstant.imgComputer,
                                              height: getSize(24),
                                              width: getSize(24),
                                              margin: getMargin(
                                                  left: 16,
                                                  top: 16,
                                                  bottom: 16))
                                        ],
                                      )
                                    ])),
                          ),
                          Container(
                              width: getHorizontalSize(329),
                              margin: getMargin(top: 26, right: 20, left: 20),
                              child: Text("msg_it_is_a_long_established".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyLarge!
                                      .copyWith(height: 1.56))),
                          Container(
                              width: getHorizontalSize(361),
                              margin: getMargin(top: 10, right: 20, left: 20),
                              child: Text("msg_there_are_many_variations2".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyLarge!
                                      .copyWith(height: 1.56))),
                          Container(
                              width: getHorizontalSize(329),
                              margin: getMargin(top: 10, right: 20, left: 20),
                              child: Text("msg_it_is_a_long_established".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyLarge!
                                      .copyWith(height: 1.56))),
                          Padding(
                              padding: getPadding(top: 11, left: 20, right: 20),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_equipment_required2".tr,
                                        style: theme.textTheme.bodyLarge),
                                    TextSpan(
                                        text: "lbl_barbell_bence".tr,
                                        style:
                                            CustomTextStyles.bodyLargeGreenA700)
                                  ]),
                                  textAlign: TextAlign.left)),
                          Padding(
                              padding: getPadding(top: 24, left: 20, right: 20),
                              child: Text("lbl_primary_muscle".tr.toUpperCase(),
                                  style: theme.textTheme.titleLarge)),
                          GridView.builder(
                              padding: getPadding(
                                  left: 20, top: 16, right: 20, bottom: 16),
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(218),
                                      crossAxisCount: 2,
                                      mainAxisSpacing: getHorizontalSize(16),
                                      crossAxisSpacing: getHorizontalSize(16)),
                              physics: BouncingScrollPhysics(),
                              itemCount: controller.primaryMuscleData.length,
                              itemBuilder: (context, index) {
                                FullWorkoutPlanPrimaryMuscleModel model =
                                    controller.primaryMuscleData[index];
                                return GestureDetector(
                                    onTap: () {}, child: gridFormet(model));
                              }),
                          Padding(
                              padding: getPadding(top: 8, left: 20, right: 20),
                              child: Text(
                                  "msg_secondary_muscle".tr.toUpperCase(),
                                  style: theme.textTheme.titleLarge)),
                          GridView.builder(
                              padding: getPadding(
                                  left: 20, top: 16, right: 20, bottom: 16),
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(218),
                                      crossAxisCount: 2,
                                      mainAxisSpacing: getHorizontalSize(16),
                                      crossAxisSpacing: getHorizontalSize(16)),
                              physics: BouncingScrollPhysics(),
                              itemCount: controller.secondryMuscleData.length,
                              itemBuilder: (context, index) {
                                FullWorkoutPlanPrimaryMuscleModel model =
                                    controller.secondryMuscleData[index];
                                return GestureDetector(
                                    onTap: () {}, child: gridFormet(model));
                              }),
                          Padding(
                              padding: getPadding(top: 8, left: 20, right: 20),
                              child: Text(
                                  "msg_more_related_exercises".tr.toUpperCase(),
                                  style: theme.textTheme.titleLarge)),
                          ListView.builder(
                            padding: getPadding(left: 20, right: 20),
                            primary: false,
                            shrinkWrap: true,
                            itemCount: controller.reletedExercise.length,
                            itemBuilder: (context, index) {
                              MoreReletedExercise data =
                                  controller.reletedExercise[index];
                              return Padding(
                                padding: getPadding(top: 8, bottom: 8),
                                child: Container(
                                    decoration: AppDecoration.fillOnPrimary
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder16),
                                    child: Padding(
                                      padding: getPadding(all: 8),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath: data.image,
                                            width: getSize(100),
                                            height: getSize(100),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(16))),
                                        Padding(
                                            padding: getPadding(
                                                left: 12, top: 20, bottom: 20),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      data.title!.toUpperCase(),
                                                      style: theme.textTheme
                                                          .titleLarge),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 13),
                                                      child: Text(
                                                          data.subTitle!,
                                                          style: theme.textTheme
                                                              .bodyLarge))
                                                ]))
                                      ]),
                                    )),
                              );
                            },
                          ),
                        ]))),
          )),
              ),
            ),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }

  onTapImgPlusone() {
    Get.toNamed(
      AppRoutes.selectPlanScreen,
    );
  }
}

gridFormet(model) {
  return Container(
    padding: getPadding(top: 4, left: 8, right: 8),
    decoration: AppDecoration.fillOnPrimary.copyWith(
      borderRadius: BorderRadiusStyle.roundedBorder16,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: getVerticalSize(167),
          width: double.infinity,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: model.image,
                height: getVerticalSize(167),
                width: getHorizontalSize(163),
                radius: BorderRadius.circular(
                  getHorizontalSize(16),
                ),
                fit: BoxFit.fill,
              ),
              model.isPro!
                  ? CustomIconButton(
                      height: getSize(24),
                      width: getSize(24),
                      margin: getMargin(
                        top: 8,
                        right: 8,
                      ),
                      padding: getPadding(
                        all: 4,
                      ),
                      alignment: Alignment.topRight,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgPremiumquality,
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
        SizedBox(
          height: getVerticalSize(4),
        ),
        Text(
          model.title!.toUpperCase(),
          style: theme.textTheme.titleLarge,
        ),
      ],
    ),
  );
}
