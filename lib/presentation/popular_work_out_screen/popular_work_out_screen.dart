// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';

import '../popular_work_out_screen/widgets/popular_work_item_widget.dart';
import 'controller/popular_work_out_controller.dart';
import 'models/popular_work_item_model.dart';



class PopularWorkOutScreen extends StatefulWidget {
  const PopularWorkOutScreen({super.key});

  @override
  State<PopularWorkOutScreen> createState() => _PopularWorkOutScreenState();
}

class _PopularWorkOutScreenState extends State<PopularWorkOutScreen> {
 PopularWorkOutController controller = Get.put(PopularWorkOutController());
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
        body: SafeArea(
          child: SizedBox(
              width: double.maxFinite,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   Container(
                       padding: getPadding(top: 20, bottom: 20),
                       decoration: AppDecoration.fillOnErrorContainer,
                       child: CustomAppBar(
                           height: getVerticalSize(33),
                           leadingWidth: getHorizontalSize(44),
                           leading: AppbarImage(
                               svgPath: ImageConstant.imgArrowleft,
                               margin:
                               getMargin(left: 20, top: 5, bottom: 3),
                               onTap: () {
                                onTapArrowleftone();
                               }),
                           centerTitle: true,
                           title: AppbarTitle(
                               text: "msg_popular_work_out"
                                   .tr
                                   .toUpperCase()))),
                   Expanded(
                       child: Padding(
                           padding: getPadding(left: 20, top: 16, right: 20),
                           child: ListView.separated(
                               physics: BouncingScrollPhysics(),
                               shrinkWrap: true,
                               separatorBuilder: (context, index) {
                                 return SizedBox(
                                     height: getVerticalSize(16));
                               },
                               itemCount: controller.populerworkoutData.length,
                               itemBuilder: (context, index) {
                                 PopularWorkItemModel model = controller.populerworkoutData[index];
                                 return animation_function(index, GestureDetector(
                                   onTap: (){
                                     controller.setCurrentWorkOut(model);
                                     Get.toNamed(
                                         AppRoutes.detailGymTabContainerScreen);
                                   },
                                   child: Container(
                                     width: double.infinity,
                                     decoration: AppDecoration.fillIndigo.copyWith(
                                         borderRadius: BorderRadiusStyle.roundedBorder16,
                                         image: DecorationImage(image: AssetImage(model.image!),fit: BoxFit.fill)
                                     ),
                                     child:  PopularWorkItemWidget(model,
                                         onTapPlay: () {
                                           onTapPlay();
                                         }),
                                   ),
                                 ));
              
              
              
              
              
              
              
                               })))
                  ])),
        )),
  );
 }


 onTapPlay() {


  Get.toNamed(AppRoutes.detailGymTabContainerScreen);
 }


 onTapArrowleftone() {
  Get.back();
 }
}



