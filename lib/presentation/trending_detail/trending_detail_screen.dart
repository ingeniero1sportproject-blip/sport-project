// ignore_for_file: deprecated_member_use, duplicate_ignore, duplicate_ignore

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../detail_gym_page/detail_gym_page.dart';
import '../detail_gym_tab_container_screen/controller/detail_gym_tab_container_controller.dart';
import '../detail_home_page/detail_home_page.dart';
import 'controller/trending_detail_screen_controller.dart';

class TrendingDetailScreen extends StatefulWidget {
  const TrendingDetailScreen({super.key});

  @override
  State<TrendingDetailScreen> createState() => _TrendingDetailScreenState();
}

class _TrendingDetailScreenState extends State<TrendingDetailScreen> {
  DetailGymTabContainerController controller = Get.put(DetailGymTabContainerController());
  TrendingDetailScreenController trendingDetailScreenController = Get.put(TrendingDetailScreenController());
  List tabs = [DetailGymPage(), DetailHomePage()];

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
              title: AppbarTitle(text: "lbl_build_muscle".tr.toUpperCase()),
              styleType: Style.bgFill),
          body: SafeArea(
            child: SizedBox(
                width: mediaQueryData.size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(trendingDetailScreenController
                                        .currentWorkout!.image!),
                                    fit: BoxFit.fill)),
                            child: Padding(
                              padding: getPadding(
                                  top: 55, bottom: 55, left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: getSize(183),
                                        child: Text(
                                          trendingDetailScreenController
                                              .currentWorkout!.title!
                                              .toUpperCase(),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.titleLarge!
                                              .copyWith(
                                            height: 1.59,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 26,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    getHorizontalSize(16),
                                                  ),
                                                  color: appTheme.whiteColor
                                                      .withOpacity(0.14)),
                                              child: Padding(
                                                padding: getPadding(
                                                    top: 4,
                                                    bottom: 4,
                                                    left: 8,
                                                    right: 8),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      margin: getMargin(
                                                        right: 4,
                                                      ),
                                                      child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgClock,
                                                      ),
                                                    ),
                                                    Text(
                                                      trendingDetailScreenController
                                                          .currentWorkout!
                                                          .time!,
                                                      style: CustomTextStyles.bodyMediumSfproDisplay,)
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: getHorizontalSize(8),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    getHorizontalSize(16),
                                                  ),
                                                  color: appTheme.whiteColor
                                                      .withOpacity(0.14)),
                                              child: Padding(
                                                padding: getPadding(
                                                    top: 4,
                                                    bottom: 4,
                                                    left: 8,
                                                    right: 8),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      margin: getMargin(
                                                        right: 4,
                                                      ),
                                                      child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgIcFire,
                                                      ),
                                                    ),
                                                    Text(
                                                      trendingDetailScreenController
                                                          .currentWorkout!
                                                          .kcl!,
                                                      style: CustomTextStyles.bodyMediumSfproDisplay,)
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          trendingDetailScreenController.currentWorkout!.isPro!
                              ? CustomIconButton(
                            height: getSize(24),
                            width: getSize(24),
                            margin: getMargin(
                              top: 8,
                              right: 8,
                            ),
                            padding: getPadding(
                              all: 4,
                            ),
                            alignment: Alignment.topRight,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgPremiumquality,
                            ),
                          )
                              : SizedBox(),
                        ],
                      ),
                      Padding(
                          padding: getPadding(left: 20, top: 27),
                          child: Text("day 1 : full body".toUpperCase(),
                              style: theme.textTheme.titleLarge)),
                      Container(
                          width: getHorizontalSize(361),
                          margin: getMargin(left: 20, top: 16, right: 33),
                          child: Text("msg_there_are_many_variations".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyLarge!
                                  .copyWith(height: 1.56))),
                      Container(
                        height: getVerticalSize(31),
                        width: double.infinity,
                        child: Padding(
                          padding: getPadding(left: 8, right: 8),
                          child: TabBar(
                            dividerColor: theme.colorScheme.onErrorContainer,
                            unselectedLabelColor: theme
                                .colorScheme.onPrimaryContainer
                                .withOpacity(1),
                            padding: getPadding(
                                left: 0, right: 0, top: 0, bottom: 0),
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
                            controller: controller.tabviewController,
                            onTap: (value) {
                              controller.pageController.animateToPage(value,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.ease);
                            },
                            tabs: [
                              Tab(child: Text("lbl_gym".tr)),
                              Tab(child: Text("lbl_home".tr))
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: PageView.builder(
                            controller: controller.pageController,
                            onPageChanged: (value) {
                              controller.tabviewController.animateTo(value,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.ease);
                            },
                            itemCount: tabs.length,
                            itemBuilder: (context, index) {
                              return Container(child: tabs[index]);
                            },
                          ),
                        ),
                      ),
                    ])),
          )),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}
