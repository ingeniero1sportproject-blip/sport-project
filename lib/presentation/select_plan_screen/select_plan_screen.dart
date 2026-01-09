// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';
import 'package:gym_app/widgets/custom_elevated_button.dart';

import '../select_plan_screen/widgets/userprofilerow_item_widget.dart';
import 'controller/select_plan_controller.dart';
import 'models/userprofilerow_item_model.dart';



class SelectPlanScreen extends StatefulWidget {
  const SelectPlanScreen({super.key});

  @override
  State<SelectPlanScreen> createState() => _SelectPlanScreenState();
}

class _SelectPlanScreenState extends State<SelectPlanScreen> {
  SelectPlanController selectPlanController = Get.put(SelectPlanController());
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
                                  text: "lbl_select_plan".tr.toUpperCase()))),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 20, top: 16, right: 20),
                              child:ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(16));
                                  },
                                  itemCount: selectPlanController.plan.length,
                                  itemBuilder: (context, index) {
                                    UserprofilerowItemModel model = selectPlanController.plan[index];
                                    return animation_function(index, UserprofilerowItemWidget(model));
                                  })))
                    ])),
          ),
          bottomNavigationBar: Container(
              margin: getMargin(left: 20, right: 20, bottom: 24),
              decoration: AppDecoration.fillOnErrorContainer,
              child: CustomElevatedButton(
                  height: getVerticalSize(54),
                  text: "lbl_add".tr.toUpperCase(),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles
                      .bodyLargeUniformProExtraCondensedOnErrorContainer,
                  onTap: () {
                    onTapAdd();
                  }))),
    );
  }

  onTapAdd() {
   Get.back();
  }

  onTapArrowleftone() {
    Get.back();
  }
}
