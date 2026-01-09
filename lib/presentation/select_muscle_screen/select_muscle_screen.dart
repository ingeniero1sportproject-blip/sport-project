// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gym_app/widgets/custom_icon_button.dart';

import 'controller/select_muscle_controller.dart';
import 'models/select_muscle_model.dart';



class SelectMuscleScreen extends StatefulWidget {
  const SelectMuscleScreen({super.key});

  @override
  State<SelectMuscleScreen> createState() => _SelectMuscleScreenState();
}

class _SelectMuscleScreenState extends State<SelectMuscleScreen> {
SelectMuscleController controller  = Get.put(SelectMuscleController());
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
            title: AppbarTitle(text: "lbl_select_muscle".tr.toUpperCase()),
            styleType: Style.bgFill),
        body: SafeArea(
          child: GridView.builder(
              padding: getPadding(left: 20, top: 16, right: 20,bottom: 20),
              
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: getVerticalSize(218),
                  crossAxisCount: 2,
                  mainAxisSpacing: getHorizontalSize(16),
                  crossAxisSpacing: getHorizontalSize(16)),
              physics: BouncingScrollPhysics(),
              itemCount: controller.getMuscledata.length,
              itemBuilder: (context, index) {
                SelectMuscleModel model = controller.getMuscledata[index];
                return animation_function(index, GestureDetector(
              
                    onTap: (){
                      Get.toNamed(
                        AppRoutes.selectMuscleTabScreen,
                        // RecommendedWorkoutPage
                      );
                      // Get.to(RecommendedWorkoutPage());
              
                    },
                    child: Container(
                      padding: getPadding(
                          top: 8,left: 8,right: 8
                      ),
                      decoration: AppDecoration.fillOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                                model.isPro!? CustomIconButton(
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
                          SizedBox(height: getVerticalSize(3
                          ),),
                          Text(
                            model.title!.toUpperCase(),
                            style: theme.textTheme.titleLarge,
                          ),
                        ],
                      ),
                    )));
              }),
        )
    ),
  );
}


onTapArrowleftone() {
  Get.back();
}


onTapExercise() {
  Get.toNamed(
    AppRoutes.recommendedWorkoutPage,
    // RecommendedWorkoutPage
  );
}}












