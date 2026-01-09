// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';

import '../../widgets/custom_icon_button.dart';
import '../recommended_detail/controller/recommended_workout_detail_controller.dart';
import 'controller/recommended_workout_one_controller.dart';
import 'models/recommended_workout_one_model.dart';

class RecommendedWorkoutOneScreen extends StatefulWidget {
  const RecommendedWorkoutOneScreen({super.key});

  @override
  State<RecommendedWorkoutOneScreen> createState() =>
      _RecommendedWorkoutOneScreenState();
}

class _RecommendedWorkoutOneScreenState
    extends State<RecommendedWorkoutOneScreen> {
  RecommendedWorkoutOneController controller = Get.put(RecommendedWorkoutOneController());
  RecommendedWorkoutDetailController recommendedWorkoutDetailController  = Get.put(RecommendedWorkoutDetailController());
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
              title: AppbarTitle(
                  text: "msg_recommended_workout".tr.toUpperCase()),
              styleType: Style.bgFill),
          body: SafeArea(
            child: Container(
              width: double.maxFinite,
              padding: getPadding(left: 20, right: 20,top: 16),
              child: GridView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: controller.recommendedData.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: getVerticalSize(247),
                crossAxisCount: 2,
                mainAxisSpacing: getHorizontalSize(16),
                crossAxisSpacing: getHorizontalSize(16)),
                itemBuilder: (context, index) {
              RecommendedWorkoutOneModel data =
                  controller.recommendedData[index];
              return animation_function(index, GestureDetector(
                  onTap: (){
                    recommendedWorkoutDetailController.setCurrentWorkOut(data);
                    Get.toNamed(AppRoutes.recommendedDetailScreen);
                  },child: RecommendedDataFormate(data: data)));




                },
              ),


            ),
          )),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}



// ignore: must_be_immutable
class RecommendedDataFormate extends StatefulWidget {
   RecommendedDataFormate({super.key,required this.data});
   RecommendedWorkoutOneModel data;

  @override
  State<RecommendedDataFormate> createState() => _RecommendedDataFormateState();
}

class _RecommendedDataFormateState extends State<RecommendedDataFormate> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                          imagePath: widget.data.image!,
                          fit: BoxFit.fill,
                          height: getVerticalSize(167),
                          width: getHorizontalSize(163),
                          radius: BorderRadius.circular(
                              getHorizontalSize(16))),
                      widget.data.isPro!? CustomIconButton(
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
                  child: Text(widget.data.title!.toUpperCase(),
                      style: theme.textTheme.titleLarge,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,)),
              Padding(
                  padding: getPadding(top: 0, bottom: 1),
                  child: Text("${widget.data.status}(${widget.data.time})",
                      style: CustomTextStyles.bodyLargeGray600))
            ]));
  }
}
