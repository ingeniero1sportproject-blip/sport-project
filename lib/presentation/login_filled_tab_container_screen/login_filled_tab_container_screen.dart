// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/signup_page/signup_page.dart';

import '../login_filled_page/login_filled_page.dart';
import 'controller/login_filled_tab_container_controller.dart';

class LoginFilledTabContainerScreen extends StatefulWidget {
  const LoginFilledTabContainerScreen({super.key});

  @override
  State<LoginFilledTabContainerScreen> createState() =>
      _LoginFilledTabContainerScreenState();
}

class _LoginFilledTabContainerScreenState
    extends State<LoginFilledTabContainerScreen> {
  LoginFilledTabContainerController controller =
      Get.put(LoginFilledTabContainerController());

  List tabs = [
    LoginFilledPage(),
    SignupPage(),
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return WillPopScope(
      onWillPop: () async{
        closeApp();
        return true;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onErrorContainer,
        body: SafeArea(
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgFrame34501,
                  height: getVerticalSize(43),
                  width: getHorizontalSize(172),
                  margin: getMargin(
                    top: 32,
                  ),
                ),
                Padding(
                  padding: getPadding(top: 51, left: 20, right: 20),
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
                          fontSize: getFontSize(16),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w700,
                        ),
                        labelColor: theme.colorScheme.primary,
                        unselectedLabelStyle: TextStyle(
                          fontSize: getFontSize(16),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                        indicatorSize: TabBarIndicatorSize.tab,
                        // indicatorColor: theme.colorScheme.primary,
                        // indicator: ShapeDecoration(
                        //     color: const Color(0XFFE5ECFF),
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(22))),
                        controller: controller.tabviewController,
                        onTap: (value) {
                          controller.pageController.animateToPage(value,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease);
                        },
                        tabs: [
                          Tab(
                            child: Padding(
                              padding: getPadding(bottom: 8),
                              child: Text(
                                "lbl_login".tr,
                              ),
                            ),
                          ),
                          Tab(
                            child: Padding(
                              padding: getPadding(bottom: 8),
                              child: Text(
                                "lbl_signup".tr,
                              ),
                            ),
                          ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
