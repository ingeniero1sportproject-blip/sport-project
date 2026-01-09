// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/custom_icon_button.dart';

import '../detail_gym_page/models/detail_gym_model.dart';
import '../full_workout_plan_screen/controller/full_workout_plan_controller.dart';
import 'controller/detail_home_controller.dart';

// ignore_for_file: must_be_immutable
class DetailHomePage extends StatefulWidget {
  DetailHomePage({Key? key}) : super(key: key);

  @override
  State<DetailHomePage> createState() => _DetailHomePageState();
}

class _DetailHomePageState extends State<DetailHomePage> {
  DetailHomeController detailHomeController = Get.put(DetailHomeController());
  FullWorkoutPlanController fullWorkoutPlanController = Get.put(FullWorkoutPlanController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return GetBuilder<DetailHomeController>(
      init: DetailHomeController(),
      builder:(controller) =>  ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: getPadding(left: 20,right: 20,top: 8),
        itemCount: controller.detailHomeData.length,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) {
          DetailModel data = controller.detailHomeData[index];
          return GestureDetector(
            onTap: (){
              fullWorkoutPlanController.setCurrentWorkoutPlan(data);
              Get.toNamed(
                AppRoutes.fullWorkoutPlanScreen,
              );
            },
            child: Padding(
              padding: getPadding(top: 8,bottom: 8),
              child: Container(
                padding: getPadding(
                  all: 8,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: getVerticalSize(120),
                      width: double.infinity,
                      child: CustomImageView(
                        imagePath: data.image,
                        fit: BoxFit.fill,
                        radius: BorderRadius.circular(
                          getHorizontalSize(16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 4,
                        top: 11,
                      ),
                      child: Text(
                        data.title!.toUpperCase(),
                        maxLines: 2,
                        style: CustomTextStyles.titleLarge20,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 4,
                        top: 5,
                        right: 11,
                        bottom: 8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [

                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(16),),
                                    color: appTheme.whiteColor.withOpacity(0.14)
                                ),
                                child: Padding(
                                  padding: getPadding(top: 4,bottom: 4,left: 8,right: 8),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: getMargin(
                                          right: 4,
                                        ),
                                        child: CustomImageView(
                                          svgPath: ImageConstant.imgClock,
                                        ),
                                      ),
                                      Text(data.time!,style: CustomTextStyles.bodyMediumSfproDisplay,)
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: getHorizontalSize(8),),
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(16),),
                                    color: appTheme.whiteColor.withOpacity(0.14)),
                                child: Padding(
                                  padding: getPadding(top: 4,bottom: 4,left: 8,right: 8),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: getMargin(
                                          right: 4,
                                        ),
                                        child: CustomImageView(
                                          svgPath: ImageConstant.imgIcFire,
                                        ),
                                      ),

                                      Text(data.kcl!,style: CustomTextStyles.bodyMediumSfproDisplay,)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          CustomIconButton(
                            height: getSize(32),
                            width: getSize(32),
                            padding: getPadding(
                              all: 4,
                            ),
                            decoration:
                            IconButtonStyleHelper.fillPrimary,
                            child: CustomImageView(
                              svgPath:data.isplay!?ImageConstant.imgPlay: ImageConstant.imgPlay,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },),
    );
  }

  onTapBtnPlayone() {
    Get.toNamed(
      AppRoutes.fullWorkoutPlanScreen,
    );
  }
}
