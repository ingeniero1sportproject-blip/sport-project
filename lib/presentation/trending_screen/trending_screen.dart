// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';

import '../trending_detail/controller/trending_detail_screen_controller.dart';
import '../trending_screen/widgets/trending_item_widget.dart';
import 'controller/trending_controller.dart';
import 'models/trending_item_model.dart';




class TrendingScreen extends StatefulWidget {
  const TrendingScreen({super.key});

  @override
  State<TrendingScreen> createState() => _TrendingScreenState();
}

class _TrendingScreenState extends State<TrendingScreen> {
  TrendingController controller = Get.put(TrendingController());
  TrendingDetailScreenController trendingDetailScreenController = Get.put(TrendingDetailScreenController());
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
              title: AppbarTitle(text: "lbl_trending2".tr.toUpperCase()),
              styleType: Style.bgFill),
          body: SafeArea(
            child: Padding(
                padding: getPadding(left: 20, top: 16, right: 20,bottom: 20),
                child:ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(16));
                    },
                    itemCount: controller.trendingData.length,
                    itemBuilder: (context, index) {
                      TrendingItemModel model = controller.trendingData[index];
                      return animation_function(index, GestureDetector(
                          onTap: (){
                            trendingDetailScreenController.setCurrentWorkOut(model);
                            Get.toNamed(
                              AppRoutes.trendingDetailScreen,
                            );
                          },
                          child: TrendingItemWidget(model)));
                    })),
          ),
        ),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}






