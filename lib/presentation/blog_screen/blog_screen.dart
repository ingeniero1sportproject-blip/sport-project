// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';

import '../blog_screen/widgets/blog_item_widget.dart';
import 'controller/blog_controller.dart';
import 'models/blog_item_model.dart';




class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
 BlogController controller = Get.put(BlogController());
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
            title: AppbarTitle(text: "lbl_blog2".tr.toUpperCase()),
            styleType: Style.bgFill),
        body: SafeArea(
          child: Padding(
              padding: getPadding(left: 20, top: 16, right: 20,bottom: 20),
              child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: getVerticalSize(16));
                  },
                  itemCount:
                  controller.blogData.length,
                  itemBuilder: (context, index) {
                    BlogItemModel model = controller.blogData[index];
                    return animation_function(index, GestureDetector(
                      onTap: (){
                        controller.setCurentBlog(model);
                        Get.toNamed(AppRoutes.blogDetailScreen);
                      },
                      child: Container(
                        width: double.infinity,
                        padding: getPadding(
                          all: 8,
                        ),
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child:  BlogItemWidget(model),
                      ),
                    ));
              
              
              
              
                  })),
        )),
  );
 }


 onTapArrowleftone() {
  Get.back();
 }
}


