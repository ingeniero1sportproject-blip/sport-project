// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';

import '../../select_muscle_tabs/gym_execirse_tab.dart';
import '../../select_muscle_tabs/home_exercise_tab.dart';
import '../../select_muscle_tabs/stretches_exercise_tab.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/select_muscle_tab_controller.dart';

class SelectMuscleTab extends StatefulWidget {
  const SelectMuscleTab({super.key});

  @override
  State<SelectMuscleTab> createState() => _SelectMuscleTabState();
}

class _SelectMuscleTabState extends State<SelectMuscleTab> {
  SeletMuscleTabController seletMuscleTabController = Get.put(SeletMuscleTabController());
  List tabs = [GymExecirseTab(),HomeExerciseTab(),StretchesExerciseTab()];
  @override
  Widget build(BuildContext context) {
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
                    Get.back();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_chest2".tr.toUpperCase())),
          body: SafeArea(
            child: GetBuilder<SeletMuscleTabController>(
              init: SeletMuscleTabController(),
              builder:(controller) =>  SizedBox(
                  width: mediaQueryData.size.width,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(top: 8, left: 0, right: 0),
                          child: Container(
                            height: getVerticalSize(31),
                            width: double.infinity,
                            child: Padding(
                              padding: getPadding(left: 8, right: 8),
                              child: TabBar(
                                dividerColor: theme.colorScheme.onErrorContainer,
                                unselectedLabelColor:
                                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                                padding: getPadding(left: 0, right: 0, top: 0, bottom: 0),
                                labelStyle: TextStyle(
                                  fontSize: getFontSize(15),
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w700,
                                ),
                                labelColor: theme.colorScheme.primary,
                                unselectedLabelStyle: TextStyle(
                                  fontSize: getFontSize(15),
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                                indicatorSize: TabBarIndicatorSize.tab,

                                controller: controller.tabviewController,
                                onTap: (value) {
                                  controller.pageController.animateToPage(value,
                                      duration: const Duration(milliseconds: 300),
                                      curve: Curves.ease);
                                },
                                tabs: [
                                  Tab(child: Padding(
                                    padding: getPadding(top:8),
                                    child: Text("lbl_gym_exercise2".tr),
                                  )),
                                  Tab(child: Padding(
                                    padding: getPadding(top:8),
                                    child: Text("lbl_home_exercise2".tr),
                                  )),
                                  Tab(child: Padding(
                                    padding: getPadding(top:8),
                                    child: Text("lbl_stretches2".tr),
                                  ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: PageView.builder(
                            controller: controller.pageController,
                            onPageChanged: (value) {
                              controller.tabviewController.animateTo(value,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.ease);
                            },
                            itemCount: tabs.length,
                            itemBuilder: (context, index) {
                              return tabs[index];
                            },
                          ),
                        ),
                      ])),
            ),
          ),
          bottomNavigationBar: Container(
      margin: getMargin(left: 20, right: 20, bottom: 24),
      decoration: AppDecoration.fillOnErrorContainer,
      child: CustomElevatedButton(
          height: getVerticalSize(54),
          text: "lbl_next2".tr.toUpperCase(),
          buttonStyle: CustomButtonStyles.fillPrimary,
          buttonTextStyle: CustomTextStyles
              .bodyLargeUniformProExtraCondensedOnErrorContainer,
          onTap: () {
            Get.toNamed(AppRoutes.setsAndRepsScreen);
          }))
      ),
    );

  }
}
