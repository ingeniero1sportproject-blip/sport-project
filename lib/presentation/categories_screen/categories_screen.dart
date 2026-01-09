// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/challenges_page/challenges_page.dart';
import 'package:gym_app/presentation/exercise_screen/exercise_screen.dart';
import 'package:gym_app/presentation/health_tips_screen/health_tips_screen.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';

import '../categories_screen/widgets/healthtips1_item_widget.dart';
import '../workout_plan_page/workout_plan_page.dart';
import 'controller/categories_controller.dart';
import 'models/healthtips1_item_model.dart';




class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
 CategoriesController controller = Get.put(CategoriesController());

 List categoriesScreen = [HealthTipsScreen(),ExerciseScreen(),ExerciseScreen(),ChallengesPage(),ExerciseScreen(),ExerciseScreen(),WorkoutPlanPage()];
 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return SafeArea(
    child: WillPopScope(
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
                title: AppbarTitle(text: "lbl_categories2".tr.toUpperCase()),
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
                           child:GridView.builder(
                               shrinkWrap: true,
                               gridDelegate:
                               SliverGridDelegateWithFixedCrossAxisCount(
                                   mainAxisExtent: getVerticalSize(124),
                                   crossAxisCount: 2,
                                   mainAxisSpacing: getHorizontalSize(16),
                                   crossAxisSpacing: getHorizontalSize(16)),
                               physics: NeverScrollableScrollPhysics(),
                               itemCount: controller.categoriesData.length,
                               itemBuilder: (context, index) {
                                Healthtips1ItemModel model = controller.categoriesData[index];
                                return animation_function(index,  Healthtips1ItemWidget(model,
                                    onTapHealthtips: () {
                                      Get.to(categoriesScreen[index]);
                                    }));
              
                               })),
              
                      ])),
            )),
    ),
  );
 }

 onTapHealthtips() {
  Get.toNamed(AppRoutes.exerciseScreen);
 }


 onTapArrowleftone() {
  Get.back();
 }
}





