// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/search_fill_screen/models/search_fill_model.dart';
import 'package:gym_app/widgets/app_bar/appbar_edittext.dart';
import 'package:gym_app/widgets/app_bar/appbar_subtitle.dart';

import 'controller/search_fill_controller.dart';

class SearchFillScreen extends StatefulWidget {
  const SearchFillScreen({super.key});

  @override
  State<SearchFillScreen> createState() => _SearchFillScreenState();
}

class _SearchFillScreenState extends State<SearchFillScreen> {
  SearchFillController searchFillController = Get.put(SearchFillController());

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
            child: GetBuilder<SearchFillController>(
              init: SearchFillController(),
              builder:(controller) => Container(
                  width: double.maxFinite,
                  child: Padding(
                    padding: getPadding(top: 16, bottom: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: AppbarEdittext(
                                      function: (){},
                                        onFieldSubmitted: (value) {
                                          controller.searchData
                                              .add(SearchFillModel(value));
                                          controller.update();
                                        },
                                        hintText: "lbl_exercise2".tr,
                                        controller:
                                            controller.exercisevalueController),
                                  ),
                                  SizedBox(
                                    width: getHorizontalSize(16),
                                  ),
                                  AppbarSubtitle(
                                      text: "lbl_cancel".tr,
                                      onTap: () {
                                        onTapCancel();
                                      })
                                ],
                              )
                  
                              ),
                          Column(
                            children: [
                              Padding(
                                padding: getPadding(top: 24,left: 20,right: 20),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_recent_search".tr.toUpperCase(),
                                          style: theme.textTheme.titleLarge),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("lbl_clear_all".tr,
                                              style: CustomTextStyles.bodyLargeGray600))
                                    ]),
                              ),
                  
                              ListView.builder(
                                padding: getPadding(left: 20,right: 20,top: 8),
                                primary: false,
                                shrinkWrap: true,
                                itemCount: controller.searchData.length,
                                itemBuilder: (context, index) {
                                  SearchFillModel data = controller.searchData[index];
                                return   Padding(
                                  padding: getPadding(top: 8,bottom: 8),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(data.searchText!,
                                            style: theme.textTheme.bodyLarge),
                                        CustomImageView(
                                          onTap: (){
                                            controller.searchData.removeAt(index);
                                            controller.update();
                                          },
                                            svgPath: ImageConstant.imgClose,
                                            height: getSize(24),
                                            width: getSize(24))
                                      ]),
                                );
                              },)
                            ],
                          ),
                          // Padding(
                          //     padding: getPadding(top: 26),
                          //     child: Text("lbl_results".tr.toUpperCase(),
                          //         style: theme.textTheme.titleLarge)),
                          // GestureDetector(
                          //     onTap: () {
                          //       onTapResults();
                          //     },
                          //     child: Container(
                          //         margin: getMargin(top: 21),
                          //         padding: getPadding(all: 8),
                          //         decoration: AppDecoration.fillOnPrimary
                          //             .copyWith(
                          //                 borderRadius:
                          //                     BorderRadiusStyle.roundedBorder16),
                          //         child: Row(children: [
                          //           SizedBox(
                          //               height: getSize(100),
                          //               width: getSize(100),
                          //               child: Stack(
                          //                   alignment: Alignment.topRight,
                          //                   children: [
                          //                     CustomImageView(
                          //                         imagePath: ImageConstant
                          //                             .imgSporthealthbo,
                          //                         height: getSize(100),
                          //                         width: getSize(100),
                          //                         radius: BorderRadius.circular(
                          //                             getHorizontalSize(16)),
                          //                         alignment: Alignment.center),
                          //                     CustomImageView(
                          //                         svgPath:
                          //                             ImageConstant.imgGroup38260,
                          //                         height: getSize(24),
                          //                         width: getSize(24),
                          //                         alignment: Alignment.topRight,
                          //                         margin:
                          //                             getMargin(top: 8, right: 8))
                          //                   ])),
                          //           Padding(
                          //               padding: getPadding(
                          //                   left: 12, top: 6, bottom: 4),
                          //               child: Column(
                          //                   crossAxisAlignment:
                          //                       CrossAxisAlignment.start,
                          //                   mainAxisAlignment:
                          //                       MainAxisAlignment.start,
                          //                   children: [
                          //                     Text(
                          //                         "msg_the_body_composition"
                          //                             .tr
                          //                             .toUpperCase(),
                          //                         style: CustomTextStyles
                          //                             .titleLarge20),
                          //                     Padding(
                          //                         padding: getPadding(top: 8),
                          //                         child: Text(
                          //                             "msg_12_tutorials_30min".tr,
                          //                             style: CustomTextStyles
                          //                                 .bodyLargeGray600)),
                          //                     Padding(
                          //                         padding: getPadding(top: 9),
                          //                         child: Row(children: [
                          //                           CustomElevatedButton(
                          //                               width:
                          //                                   getHorizontalSize(68),
                          //                               text: "lbl_30_min".tr,
                          //                               leftIcon: Container(
                          //                                   margin: getMargin(
                          //                                       right: 4),
                          //                                   child: CustomImageView(
                          //                                       svgPath:
                          //                                           ImageConstant
                          //                                               .imgClock))),
                          //                           CustomElevatedButton(
                          //                               width:
                          //                                   getHorizontalSize(75),
                          //                               text: "lbl_450_kcal".tr,
                          //                               margin:
                          //                                   getMargin(left: 8),
                          //                               leftIcon: Container(
                          //                                   margin: getMargin(
                          //                                       right: 4),
                          //                                   child: CustomImageView(
                          //                                       svgPath:
                          //                                           ImageConstant
                          //                                               .imgIcFire)))
                          //                         ]))
                          //                   ]))
                          //         ]))),
                          // Container(
                          //     margin: getMargin(top: 16),
                          //     padding: getPadding(all: 8),
                          //     decoration: AppDecoration.fillOnPrimary.copyWith(
                          //         borderRadius:
                          //             BorderRadiusStyle.roundedBorder16),
                          //     child: Row(children: [
                          //       CustomImageView(
                          //           imagePath:
                          //               ImageConstant.imgSporthealthbo100x100,
                          //           height: getSize(100),
                          //           width: getSize(100),
                          //           radius: BorderRadius.circular(
                          //               getHorizontalSize(16))),
                          //       Padding(
                          //           padding:
                          //               getPadding(left: 12, top: 6, bottom: 4),
                          //           child: Column(
                          //               crossAxisAlignment:
                          //                   CrossAxisAlignment.start,
                          //               mainAxisAlignment:
                          //                   MainAxisAlignment.start,
                          //               children: [
                          //                 Text(
                          //                     "lbl_the_flexibility"
                          //                         .tr
                          //                         .toUpperCase(),
                          //                     style:
                          //                         CustomTextStyles.titleLarge20),
                          //                 Padding(
                          //                     padding: getPadding(top: 8),
                          //                     child: Text(
                          //                         "msg_14_tutorials_50min".tr,
                          //                         style: CustomTextStyles
                          //                             .bodyLargeGray600)),
                          //                 Padding(
                          //                     padding: getPadding(top: 9),
                          //                     child: Row(children: [
                          //                       CustomElevatedButton(
                          //                           width: getHorizontalSize(68),
                          //                           text: "lbl_45_min".tr,
                          //                           leftIcon: Container(
                          //                               margin:
                          //                                   getMargin(right: 4),
                          //                               child: CustomImageView(
                          //                                   svgPath: ImageConstant
                          //                                       .imgClock))),
                          //                       CustomElevatedButton(
                          //                           width: getHorizontalSize(75),
                          //                           text: "lbl_100_kcal".tr,
                          //                           margin: getMargin(left: 8),
                          //                           leftIcon: Container(
                          //                               margin:
                          //                                   getMargin(right: 4),
                          //                               child: CustomImageView(
                          //                                   svgPath: ImageConstant
                          //                                       .imgIcFire)))
                          //                     ]))
                          //               ]))
                          //     ])),
                  
                        ]),
                  )),
            ),
          )),
    );
  }

  onTapCancel() {
    Get.back();
  }

  onTapResults() {
    Get.toNamed(
      AppRoutes.detailGymTabContainerScreen,
    );
  }
}
