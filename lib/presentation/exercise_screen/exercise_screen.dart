// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';

import '../exercise_screen/widgets/exercise_item_widget.dart';
import 'controller/exercise_controller.dart';
import 'models/exercise_item_model.dart';





class ExerciseScreen extends StatefulWidget {
  const ExerciseScreen({super.key});

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
 ExerciseController controller =Get.put(ExerciseController());
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
            title: AppbarTitle(text: "lbl_exercise2".tr.toUpperCase()),
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
              itemCount: controller.execirseData.length,
              itemBuilder: (context, index) {
               ExerciseItemModel model = controller.execirseData[index];
               return animation_function(index, GestureDetector(

                   onTap: (){
                     Get.toNamed(AppRoutes.recommendedWorkoutTabContainerScreen);

                   },
                   child: ExerciseItemWidget(model)));
              }),
        )),
  );
 }


 onTapArrowleftone() {
  Get.back();
 }
}





