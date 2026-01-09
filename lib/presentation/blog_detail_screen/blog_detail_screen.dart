// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';
import '../blog_screen/controller/blog_controller.dart';
import 'controller/blog_detail_controller.dart';





class BlogDetailScreen extends StatefulWidget {
  const BlogDetailScreen({super.key});

  @override
  State<BlogDetailScreen> createState() => _BlogDetailScreenState();
}

class _BlogDetailScreenState extends State<BlogDetailScreen> {
 BlogDetailController blogDetailController = Get.put(BlogDetailController());
 BlogController blogController = Get.put(BlogController());
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
                text: blogController.currentModel!.title!.toUpperCase())),
        body: SafeArea(
          child: GetBuilder<BlogController>(
           init: BlogController(),
              
            builder:(controller) =>  SingleChildScrollView(
                child: Padding(
                    padding: getPadding(left: 20, right: 20),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        children: [
                          Container(
                            height: getVerticalSize(160),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(getHorizontalSize(16)),
                                image: DecorationImage(image: AssetImage(controller.currentModel!.image!,),fit: BoxFit.fill)),
              
                          ),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Text(
                                  controller.currentModel!.title!
                                      .toUpperCase(),
                                  style: theme
                                      .textTheme.titleLarge)),
                          Container(
                              width: getHorizontalSize(370),
                              margin: getMargin(top: 16),
                              child: Text(
                                  "msg_each_one_has_different".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme
                                      .textTheme.bodyLarge!
                                      .copyWith(height: 1.56))),
                          Container(
                              width: getHorizontalSize(372),
                              margin: getMargin(top: 18),
                              child: Text(
                                  "msg_most_people_tend".tr,
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme
                                      .textTheme.bodyLarge!
                                      .copyWith(height: 1.56))),
                          Container(
                              width: getHorizontalSize(340),
                              margin:
                              getMargin(top: 13, right: 33),
                              child: Text(
                                  "msg_jerry_diaz_a_certified".tr,
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme
                                      .textTheme.bodyLarge!
                                      .copyWith(height: 1.56))),
                          Container(
                              width: getHorizontalSize(363),
                              margin:
                              getMargin(top: 10, right: 10),
                              child: Text(
                                  "msg_health_promotion".tr,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme
                                      .textTheme.bodyLarge!
                                      .copyWith(height: 1.56))),
                          Container(
                              width: getHorizontalSize(363),
                              margin:
                              getMargin(top: 10, right: 10),
                              child: Text(
                                  "msg_health_promotion".tr,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme
                                      .textTheme.bodyLarge!
                                      .copyWith(height: 1.56)))
                        ]))),
          ),
        )),
  );
 }

 onTapArrowleftone() {
  Get.back();
 }
}







