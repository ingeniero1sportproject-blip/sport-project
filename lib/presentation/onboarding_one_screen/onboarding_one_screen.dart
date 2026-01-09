// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';

import '../../widgets/custom_elevated_button.dart';
import 'controller/onboarding_one_controller.dart';
import 'models/workoutanywhere_item_model.dart';

class OnboardingOneScreen extends StatefulWidget {
  const OnboardingOneScreen({super.key});

  @override
  State<OnboardingOneScreen> createState() => _OnboardingOneScreenState();
}

class _OnboardingOneScreenState extends State<OnboardingOneScreen> {
  OnboardingOneController onboardingOneController =
      Get.put(OnboardingOneController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async{
        closeApp();
        return false;
      },
      child: Scaffold(
          backgroundColor: theme.colorScheme.onErrorContainer,
          body: GetBuilder<OnboardingOneController>(
              init: OnboardingOneController(),
              builder: (controller) => Stack(children: [
                    PageView.builder(
                      itemCount: controller.getOnboarding.length,
                      onPageChanged: (value) {
                        controller.setCurrentPage(value);
                      },
                      controller: controller.pageController,
                      itemBuilder: (context, index) {
                        WorkoutanywhereItemModel data =
                            controller.getOnboarding[index];
                        return Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    data.image!,
                                  ),
                                  fit: BoxFit.fill)),
                        );
                      },
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding:getPadding(left: 20,right: 20,bottom: 20),
                        child: Container(
                            decoration: AppDecoration.fillBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder32,
                            ),
                            child: Padding(
                              padding: getPadding(left: 0,right: 0,top: 24,bottom: 24),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    controller.getOnboarding[controller.currentPage]
                                        .title!
                                        .toUpperCase(),
                                    style: theme.textTheme.displayMedium,
                                    textAlign: TextAlign.center,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 13,left: 16,right: 16
                                    ),
                                    child: Text(
                                      controller
                                          .getOnboarding[controller.currentPage]
                                          .subTitle!,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.bodyLarge!.copyWith(
                                        height: 1.56,
                                      ),
                                    ),
                                  ),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: List.generate(
                                          controller.getOnboarding.length, (index) {
                                        return AnimatedContainer(
                                          margin:
                                              getMargin(left: 3, right: 3, top: 40),
                                          duration: Duration(milliseconds: 300),
                                          height: getSize(8),
                                          width: getSize(
                                              index == controller.currentPage
                                                  ? 24
                                                  : 8),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(
                                                  getHorizontalSize(22)),
                                              color:
                                                  (index == controller.currentPage)
                                                      ? theme.colorScheme.primary
                                                      : theme.colorScheme.primary
                                                          .withOpacity(0.14)),
                                        );
                                      })),
                                  CustomElevatedButton(
                                    height: getVerticalSize(54),
                                    text: controller.currentPage ==
                                        controller.getOnboarding.length - 1
                                        ? "Get started".toUpperCase()
                                        : "lbl_next".tr.toUpperCase(),
                                    margin: getMargin(
                                      top: 40,left: 16,right: 16
                                    ),
                                    buttonStyle: CustomButtonStyles.fillPrimary,
                                    buttonTextStyle: CustomTextStyles
                                        .bodyLargeUniformProExtraCondensedOnErrorContainer,
                                    onTap: controller.currentPage ==
                                        controller.getOnboarding.length - 1
                                        ? () {
                                      PrefUtils.setIsIntro(false);
                                      Get.toNamed(
                                        AppRoutes
                                            .firebaseLoginScreen,
                                      );
                                    }
                                        : () {
                                      controller.pageController.nextPage(
                                          duration: const Duration(
                                              milliseconds: 100),
                                          curve: Curves.bounceIn);
                                    },
                                  ),
                                ],
                              ),
                            )),
                      ),
                    )
                  ]))),
    );
  }

  onTapNextButton() {
    Get.toNamed(
      AppRoutes.onboardingTwoScreen,
    );
  }
}
