// ignore_for_file: unreachable_switch_default, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/home_page/home_page.dart';
import 'package:gym_app/presentation/workout_plan_page/workout_plan_page.dart';
import 'package:gym_app/widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../challenges_page/challenges_page.dart';
import '../profile_page/profile_page.dart';
import 'controller/home_container_controller.dart';

class HomeContainerScreen extends StatefulWidget {
  const HomeContainerScreen({super.key});

  @override
  State<HomeContainerScreen> createState() => _HomeContainerScreenState();
}

class _HomeContainerScreenState extends State<HomeContainerScreen> {
  HomeContainerController controller = Get.put(HomeContainerController());

  List<Widget> screen = [
    HomePage(),
    WorkoutPlanPage(isNavigateHomeTab: true),
    ChallengesPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return GetBuilder<CustomBottomBarController>(
      init: CustomBottomBarController(),
      builder: (controller) => WillPopScope(
        onWillPop: () async {
          if (controller.selectedIndex == 0) {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return AlertDialog(
                    insetPadding: EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    contentPadding: EdgeInsets.zero,
                    content: Container(
                        width: getHorizontalSize(396),
                        padding:
                            getPadding(left: 0, top: 38, right: 0, bottom: 38),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Are you sure you want to exit?".toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleLarge20,
                              // style: AppStyle.txtHeadline,
                            ),
                            Padding(
                              padding: getPadding(
                                left: 30,
                                top: 28,
                                right: 30,
                                bottom: 2,
                              ),
                              child: Row(
                                children: [

                                  Expanded(
                                    child: CustomElevatedButton(
                                        height: getVerticalSize(54),

                                        text: "No".toUpperCase(),
                                        margin: getMargin(left: 0),
                                        buttonStyle: CustomButtonStyles.primaryborderstyle,
                                        buttonTextStyle: CustomTextStyles
                                            .bodyLargeUniformProExtraCondensedButtonColor,
                                        onTap: () {
                                          Get.back();
                                          // onTapNext();
                                        }),
                                  ),


                                  SizedBox(
                                    width: getHorizontalSize(20),
                                  ),


                                  Expanded(
                                    child: CustomElevatedButton(
                                        height: getVerticalSize(54),

                                        text: "Yes".toUpperCase(),
                                        margin: getMargin(left: 0),
                                        buttonStyle: CustomButtonStyles.fillPrimary,
                                        buttonTextStyle: CustomTextStyles
                                            .bodyLargeUniformProExtraCondensedOnErrorContainer,
                                        onTap: () {
                                          if (controller.selectedIndex == 0) {
                                            closeApp();
                                          } else {
                                            controller.getIndex(0);
                                            Get.back();
                                          }
                                        }),
                                  )

                                  // Expanded(
                                  //     child: CustomElevatedButton(
                                  //   height: getVerticalSize(54),
                                  //   width: getHorizontalSize(179),
                                  //   text: "lbl_yes".tr.toUpperCase(),
                                  //   margin: getMargin(left: 16),
                                  //   buttonStyle: CustomButtonStyles.fillPrimary,
                                  //   buttonTextStyle: CustomTextStyles
                                  //       .bodyLargeUniformProExtraCondensedOnErrorContainer,
                                  //   onTap: () {
                                  //     if (controller.selectedIndex == 0) {
                                  //       closeApp();
                                  //     } else {
                                  //       controller.getIndex(0);
                                  //       Get.back();
                                  //     }
                                  //   },
                                  // )),
                                ],
                              ),
                            ),
                          ],
                        )));
              },
            );
          } else {
            controller.getIndex(0);
            // Get.back();
          }
          return false;
        },
        child: Scaffold(
            backgroundColor: theme.colorScheme.onErrorContainer,
            body: SafeArea(child: screen[controller.selectedIndex]),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Workout:
        return AppRoutes.workoutPlanPage;
      case BottomBarEnum.Challenges:
        return AppRoutes.challengesPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.workoutPlanPage:
        return WorkoutPlanPage();
      case AppRoutes.challengesPage:
        return ChallengesPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
