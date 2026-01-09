// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../chest_gym_exercise_page/controller/chest_gym_exercise_controller.dart';
import '../chest_gym_exercise_page/models/chest_gym_item_model.dart';
import '../chest_gym_exercise_page/widgets/chest_gym_item_widget.dart';
import 'controller/wishlist_controller.dart';




class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
 WishlistController controller = Get.put(WishlistController());
 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return WillPopScope(
   onWillPop: () async{
    Get.back();
     return true;
   },
    child: Scaffold(
     appBar: CustomAppBar(
         leadingWidth: getHorizontalSize(44),
         leading: AppbarImage(
             svgPath: ImageConstant.imgArrowleft,
             margin: getMargin(left: 20, top: 26, bottom: 26),
             onTap: () {
              onTapArrowleftone();
             }),
         centerTitle: true,
         title: AppbarTitle(text: "Wishlist".toUpperCase()),
         styleType: Style.bgFill),
     backgroundColor: theme.colorScheme.onErrorContainer,
     body: SafeArea(
       child: GetBuilder<ChestGymExerciseController>(
        init: ChestGymExerciseController(),
        builder:(controller) =>  Container(
         width: double.maxFinite,
         decoration: AppDecoration.fillOnErrorContainer,
         child: Padding(
          padding: getPadding(
           left: 20,
           top: 24,
           right: 20,
          ),
          child:
          ListView.separated(
           physics: BouncingScrollPhysics(),
           shrinkWrap: true,
           separatorBuilder: (
               context,
               index,
               ) {
            return SizedBox(
             height: getVerticalSize(16),
            );
           },
           itemCount: controller.cheastGym.length,
           itemBuilder: (context, index) {
            ChestGymItemModel model = controller.cheastGym[index];
            return animation_function(index, ChestGymItemWidget(
             model,
            ));
           },
          ),
         ),
        ),
       ),
     ),),
  );
 }


 onTapArrowleftone() {
  Get.back();
 }
}


