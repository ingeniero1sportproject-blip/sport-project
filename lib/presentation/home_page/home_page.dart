// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/custom_icon_button.dart';

import '../../widgets/app_bar/appbar_edittext.dart';
import '../blog_screen/controller/blog_controller.dart';
import '../blog_screen/models/blog_item_model.dart';
import '../categories_screen/controller/categories_controller.dart';
import '../categories_screen/models/healthtips1_item_model.dart';
import '../categories_screen/widgets/healthtips1_item_widget.dart';
import '../challenges_page/challenges_page.dart';
import '../exercise_screen/exercise_screen.dart';
import '../health_tips_screen/health_tips_screen.dart';
import '../popular_work_out_screen/controller/popular_work_out_controller.dart';
import '../popular_work_out_screen/models/popular_work_item_model.dart';
import '../popular_work_out_screen/widgets/popular_work_item_widget.dart';
import '../recommended_detail/controller/recommended_workout_detail_controller.dart';
import '../recommended_workout_one_screen/controller/recommended_workout_one_controller.dart';
import '../recommended_workout_one_screen/models/recommended_workout_one_model.dart';
import '../recommended_workout_one_screen/recommended_workout_one_screen.dart';
import '../trending_detail/controller/trending_detail_screen_controller.dart';
import '../trending_screen/controller/trending_controller.dart';
import '../trending_screen/models/trending_item_model.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TrendingDetailScreenController trendingDetailScreenController =
      Get.put(TrendingDetailScreenController());
  HomeController controller = Get.put(HomeController(HomeModel().obs));
  CategoriesController categoriesController = Get.put(CategoriesController());
  PopularWorkOutController popularWorkOutController =
      Get.put(PopularWorkOutController());
  RecommendedWorkoutDetailController recommendedWorkoutDetailController =
      Get.put(RecommendedWorkoutDetailController());

  RecommendedWorkoutOneController recommendedWorkoutOneController =
      Get.put(RecommendedWorkoutOneController());
  TrendingController trendingController = Get.put(TrendingController());
  BlogController blogController = Get.put(BlogController());
  List categoryiesClass = [
    HealthTipsScreen(),
    ExerciseScreen(),
    ExerciseScreen(),
    ChallengesPage(isNavigateHomeTab: true)
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Column(
      children: [
        Padding(
          padding: getPadding(
            top: 16,
            left: 20,
            right: 20,
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomImageView(
              svgPath: ImageConstant.imgFrame34501Onprimarycontainer,
            ),
            CustomImageView(
                svgPath: ImageConstant.imgNotification,
                height: getSize(24),
                width: getSize(24),
                margin: getMargin(top: 4, bottom: 4),
                onTap: () {
                  onTapImgNotification();
                })
          ]),
        ),
        Padding(
          padding: getPadding(left: 20, right: 20, top: 32),
          child: AppbarEdittext(
              function: () {
                Get.toNamed(AppRoutes.searchFillScreen);
              },
              action: TextInputType.none,
              hintText: "Search",
              controller: controller.searchController),
        ),
        SizedBox(
          height: getVerticalSize(24),
        ),
        Expanded(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                      padding: getPadding(left: 19, right: 19),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("lbl_categories".tr.toUpperCase(),
                                style: theme.textTheme.titleLarge),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtViewall();
                                },
                                child: Padding(
                                    padding: getPadding(top: 4),
                                    child: Text("lbl_view_all".tr,
                                        style:
                                            CustomTextStyles.bodyLargeGray600)))
                          ])),
                  Padding(
                      padding: getPadding(top: 21),
                      child: GridView.builder(
                          padding: getPadding(left: 19, right: 19),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: getVerticalSize(123),
                                  crossAxisCount: 2,
                                  mainAxisSpacing: getHorizontalSize(16),
                                  crossAxisSpacing: getHorizontalSize(16)),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount:
                              categoriesController.categoriesData.length > 4
                                  ? 4
                                  : categoriesController.categoriesData.length,
                          itemBuilder: (context, index) {
                            Healthtips1ItemModel model =
                                categoriesController.categoriesData[index];
                            return animation_function(
                                index,
                                Healthtips1ItemWidget(model,
                                    onTapHealthtips: () {
                                  Get.to(categoryiesClass[index]);
                                }),
                                listAnimation: Duration(milliseconds: 800));
                          })),
                  Padding(
                      padding: getPadding(left: 19, top: 27, right: 19),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("msg_popular_work_out".tr.toUpperCase(),
                                style: theme.textTheme.titleLarge),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtViewallone();
                                },
                                child: Padding(
                                    padding: getPadding(top: 4),
                                    child: Text("lbl_view_all".tr,
                                        style:
                                            CustomTextStyles.bodyLargeGray600)))
                          ])),
                  SizedBox(height: getSize(16)),
                  SizedBox(
                    height: getSize(247),
                    child: ListView.builder(
                      padding: getPadding(left: 12, right: 12),
                      scrollDirection: Axis.horizontal,
                      itemCount:
                          popularWorkOutController.populerworkoutData.length > 2
                              ? 2
                              : popularWorkOutController
                                  .populerworkoutData.length,
                      itemBuilder: (context, index) {
                        PopularWorkItemModel model =
                            popularWorkOutController.populerworkoutData[index];
                        return animation_function(
                            index,
                            Hero(
                              tag: model.image!,
                              child: Padding(
                                padding: getPadding(left: 8, right: 8),
                                child: GestureDetector(
                                  onTap: (){
                                    popularWorkOutController.setCurrentWorkOut(model);
                                    Get.toNamed(
                                        AppRoutes.detailGymTabContainerScreen);
                                  },
                                  child: Container(
                                    width: getSize(320),
                                    height: double.infinity,
                                    decoration: AppDecoration.fillIndigo.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16,
                                        image: DecorationImage(
                                            image: AssetImage(model.image!),
                                            fit: BoxFit.fill)),
                                    child:
                                        PopularWorkItemWidget(model, onTapPlay: () {
                                      Get.toNamed(
                                          AppRoutes.detailGymTabContainerScreen);
                                      // onTapPlay();
                                    }),
                                  ),
                                ),
                              ),
                            ));

                      },
                    ),
                  ),
                  Padding(
                      padding: getPadding(left: 19, top: 27, right: 19),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("msg_recommended_workout".tr.toUpperCase(),
                                style: theme.textTheme.titleLarge),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtViewalltwo();
                                },
                                child: Padding(
                                    padding: getPadding(top: 4),
                                    child: Text("lbl_view_all".tr,
                                        style:
                                            CustomTextStyles.bodyLargeGray600)))
                          ])),
                  GridView.builder(
                    padding: getPadding(left: 20, right: 20, top: 16),
                    primary: false,
                    shrinkWrap: true,
                    itemCount:
                        recommendedWorkoutOneController.recommendedData.length >
                                2
                            ? 2
                            : recommendedWorkoutOneController
                                .recommendedData.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(247),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(16),
                        crossAxisSpacing: getHorizontalSize(16)),
                    itemBuilder: (context, index) {
                      RecommendedWorkoutOneModel data =
                          recommendedWorkoutOneController
                              .recommendedData[index];
                      return animation_function(
                          index,
                          GestureDetector(
                              onTap: () {
                                recommendedWorkoutDetailController
                                    .setCurrentWorkOut(data);
                                Get.toNamed(AppRoutes.recommendedDetailScreen);
                              },
                              child: Hero(tag: data.image!,child: RecommendedDataFormate(data: data))));
                    },
                  ),
                  Padding(
                      padding: getPadding(left: 19, top: 27, right: 19),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("lbl_trending".tr.toUpperCase(),
                                style: theme.textTheme.titleLarge),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtViewallthree();
                                },
                                child: Padding(
                                    padding: getPadding(top: 4),
                                    child: Text("lbl_view_all".tr,
                                        style:
                                            CustomTextStyles.bodyLargeGray600)))
                          ])),
                  SizedBox(
                    height: getVerticalSize(16),
                  ),
                  SizedBox(
                    height: getSize(242),
                    child: ListView.builder(
                      padding: getPadding(left: 10, right: 10),
                      scrollDirection: Axis.horizontal,
                      itemCount: trendingController.trendingData.length,
                      itemBuilder: (context, index) {
                        TrendingItemModel data =
                            trendingController.trendingData[index];
                        return animation_function(index, Padding(
                          padding: getPadding(left: 10, right: 10),
                          child: Hero(
                            tag: data.image!,
                            child: GestureDetector(
                              onTap: () {
                                trendingDetailScreenController
                                    .setCurrentWorkOut(data);
                                onTapTrending();
                              },
                              child: Container(
                                width: getSize(259),
                                height: double.infinity,
                                decoration: AppDecoration.fillOnPrimary.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder16,
                                ),
                                child: Padding(
                                  padding: getPadding(all: 8),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Stack(
                                          children: [
                                            CustomImageView(
                                              height: getSize(121),
                                              width: double.infinity,
                                              imagePath: data.image,
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(16)),
                                            ),
                                            data.isPro!
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
                                                svgPath: ImageConstant
                                                    .imgPremiumquality,
                                              ),
                                            )
                                                : SizedBox(),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                          padding: getPadding(top: 8),
                                          child: Text(
                                            data.title!.toUpperCase(),
                                            style: CustomTextStyles.titleLarge20,
                                            maxLines: 2,
                                          )),
                                      Padding(
                                        padding: getPadding(top: 4),
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
                                                    Text(data.time!,
                                                        style: CustomTextStyles.bodyMediumSfproDisplay),
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
                                                        bottom: 0,
                                                        right: 4,
                                                      ),
                                                      child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgIcFire,
                                                      ),
                                                    ),
                                                    Text(
                                                      data.kcl!,
                                                      style: CustomTextStyles
                                                          .bodyMediumSfproDisplay,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ))


                          ;
                      },
                    ),
                  ),
                  Padding(
                      padding: getPadding(left: 19, top: 27, right: 19),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("lbl_blog".tr.toUpperCase(),
                                style: theme.textTheme.titleLarge),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtViewallfour();
                                },
                                child: Padding(
                                    padding: getPadding(top: 4),
                                    child: Text("lbl_view_all".tr,
                                        style:
                                            CustomTextStyles.bodyLargeGray600)))
                          ])),
                  SizedBox(
                    height: getVerticalSize(16),
                  ),
                  SizedBox(
                    height: getSize(118),
                    child: ListView.builder(
                      padding: getPadding(left: 10, right: 10),
                      scrollDirection: Axis.horizontal,
                      itemCount: blogController.blogData.length > 3
                          ? 3
                          : blogController.blogData.length,
                      itemBuilder: (context, index) {
                        BlogItemModel model = blogController.blogData[index];
                        return animation_function(index,  Padding(
                            padding: getPadding(left: 10, right: 10),
                            child: GestureDetector(
                              onTap: () {
                                blogController.setCurentBlog(model);
                                Get.toNamed(AppRoutes.blogDetailScreen);
                              },
                              child: Hero(

                                tag: model.image!,
                                child: Container(
                                    width: getHorizontalSize(312),
                                    padding: getPadding(
                                      all: 8,
                                    ),
                                    decoration:
                                    AppDecoration.fillOnPrimary.copyWith(
                                      borderRadius:
                                      BorderRadiusStyle.roundedBorder16,
                                    ),
                                    child: Row(
                                      children: [
                                        CustomImageView(
                                          imagePath: model.image,
                                          height: getSize(101),
                                          width: getSize(101),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(16),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 12,
                                            top: 6,
                                            bottom: 0,
                                          ),
                                          child: Container(
                                            width: getSize(179),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  model.title!,
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .bodyLargeUniformProExtraCondensed,
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 5,
                                                  ),
                                                  child: Text(
                                                    model.subTitle!,
                                                    maxLines: 2,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .bodyMediumSFProDisplayGray600
                                                        .copyWith(
                                                      height: 1.50,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 5,
                                                  ),
                                                  child: Text(
                                                    model.date!,
                                                    style:
                                                    theme.textTheme.bodySmall,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            )))


                         ;
                      },
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(20),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  onTapHealthtips() {
    Get.toNamed(AppRoutes.exerciseScreen);
  }

  onTapImgNotification() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  onTapTxtViewall() {
    Get.toNamed(
      AppRoutes.categoriesScreen,
    );
  }

  onTapTxtViewallone() {
    Get.toNamed(
      AppRoutes.popularWorkOutScreen,
    );
  }

  onTapPopularworkout() {
    Get.toNamed(
      AppRoutes.detailGymTabContainerScreen,
    );
  }

  onTapTxtViewalltwo() {
    Get.toNamed(
      AppRoutes.recommendedWorkoutOneScreen,
    );
  }

  onTapChallenges() {
    Get.toNamed(
      AppRoutes.detailGymTabContainerScreen,
    );
  }

  onTapTxtViewallthree() {
    Get.toNamed(
      AppRoutes.trendingScreen,
    );
  }

  onTapTrending() {
    Get.toNamed(
      AppRoutes.trendingDetailScreen,
    );
  }

  onTapTxtViewallfour() {
    Get.toNamed(
      AppRoutes.blogScreen,
    );
  }

  onTapBlog() {
    Get.toNamed(
      AppRoutes.blogDetailScreen,
    );
  }
}
