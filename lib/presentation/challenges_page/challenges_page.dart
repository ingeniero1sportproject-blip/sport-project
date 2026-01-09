// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/custom_icon_button.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../workout_plan_page/models/workout_plan_model.dart';
import '../your_body_components_one_screen/controller/your_body_components_one_controller.dart';
import 'controller/challenges_controller.dart';

// ignore_for_file: must_be_immutable
class ChallengesPage extends StatefulWidget {
  bool isNavigateHomeTab;
  ChallengesPage({Key? key,this.isNavigateHomeTab = false}) : super(key: key);

  @override
  State<ChallengesPage> createState() => _ChallengesPageState();
}

class _ChallengesPageState extends State<ChallengesPage> {
  ChallengesController challengesController =
      Get.put(ChallengesController());
  YourBodyCompositionConsistsComponentsOneController yourBodyCompositionConsistsComponentsOneController = Get.put(YourBodyCompositionConsistsComponentsOneController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return  widget.isNavigateHomeTab
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
                title: AppbarTitle(text: "lbl_challenges2".tr.toUpperCase()),
                styleType: Style.bgFill),
            body:  get_data_list(),)): GetBuilder<ChallengesController>(
      init: ChallengesController(),
      builder:(controller) =>  Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Padding(
              padding: getPadding(bottom: 5),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(top: 16, bottom: 16),
                      child: Center(
                        child: Text("lbl_challenges2".tr.toUpperCase(),
                            style: theme.textTheme.headlineMedium),
                      ),
                    ),
                    Expanded(child:    get_data_list(),)








                  ]))),
    );
  }



  // ignore: non_constant_identifier_names
  get_data_list(){
    return  GetBuilder<ChallengesController>(
      init: ChallengesController(),
      builder:(controller) =>  GridView.builder(
        padding: getPadding(left: 20,right: 20,top: 16),
        primary: false,
        shrinkWrap: true,
        itemCount: controller.challengesData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: getVerticalSize(247),
            crossAxisCount: 2,
            mainAxisSpacing: getHorizontalSize(16),
            crossAxisSpacing: getHorizontalSize(16)),
        itemBuilder: (context, index) {
          WorkoutPlanModel data =
          controller.challengesData[index];
          return animation_function(index, GestureDetector(
            onTap: (){
              yourBodyCompositionConsistsComponentsOneController.setCurrentWorkOuut(data);
              Get.toNamed(AppRoutes.yourBodyCompositionConsistsComponentsOneScreen);
            },
            child: Container(
                decoration: AppDecoration.fillOnPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(top: 8,left: 8,right: 8),
                        child: Container(
                          width: double.infinity,

                          child:  Stack(
                            children: [
                              CustomImageView(
                                  imagePath:data.image!,
                                  fit: BoxFit.fill,
                                  height: getVerticalSize(167),
                                  width: getHorizontalSize(163),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(16))),
                              data.isPro!? CustomIconButton(
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
                              ):SizedBox(),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                          padding: getPadding(top: 7,left: 8,right: 8),
                          child: Text(data.title!.toUpperCase(),
                            // style: theme.textTheme.titleLarge,
                            style: CustomTextStyles.bodyMediumSfproDisplay18,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,)),
                      Padding(
                          padding: getPadding(top: 0, bottom: 1),
                          child: Text("${data.timeOfweeks} Weeks challenge",
                              style: CustomTextStyles.bodyLargeGray600))
                    ])),
          ));
        },
      ),
    );

  }

  onTapChallenges() {
    Get.toNamed(
      AppRoutes.yourBodyCompositionConsistsComponentsOneScreen,
    );
  }
}
