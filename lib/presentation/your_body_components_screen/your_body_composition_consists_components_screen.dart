// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/app_bar/appbar_image.dart';
import 'package:gym_app/widgets/app_bar/appbar_image_3.dart';
import 'package:gym_app/widgets/app_bar/appbar_title.dart';
import 'package:gym_app/widgets/app_bar/custom_app_bar.dart';

import 'widgets/weekprogress_item_widget.dart';
import 'controller/your_body_components_controller.dart';
import 'models/weekprogress_item_model.dart';

class YourBodyCompositionConsistsComponentsScreen extends StatefulWidget {
  const YourBodyCompositionConsistsComponentsScreen({super.key});

  @override
  State<YourBodyCompositionConsistsComponentsScreen> createState() =>
      _YourBodyCompositionConsistsComponentsScreenState();
}

class _YourBodyCompositionConsistsComponentsScreenState
    extends State<YourBodyCompositionConsistsComponentsScreen> {
  YourBodyCompositionConsistsComponentsController controller =
      Get.put(YourBodyCompositionConsistsComponentsController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async {
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
                                  text: "lbl_details".tr.toUpperCase()),
                              actions: [
                                AppbarImage3(
                                    svgPath: ImageConstant.imgIcshare,
                                    margin: getMargin(
                                        left: 20, top: 5, right: 3)),
                                AppbarImage3(
                                    svgPath: ImageConstant.imgRefresh,
                                    margin: getMargin(
                                        left: 16, top: 5, right: 3)),
                                AppbarImage3(
                                    svgPath: ImageConstant.imgEdit,
                                    margin: getMargin(
                                        left: 16, top: 5, right: 23))
                              ])),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                            Container(
                                width: double.infinity,
                                padding: getPadding(
                                    left: 0, top: 89, right: 0, bottom: 89),
                                decoration:
                                    AppDecoration.fillPrimaryContainer,
                                child: Padding(
                                    padding: getPadding(bottom: 4),
                                    child: Center(
                                      child: Text(
                                          "lbl_workout_12".tr.toUpperCase(),
                                          style:
                                              theme.textTheme.displayMedium),
                                    ))),
                            Container(
                                margin:
                                    getMargin(left: 20, top: 16, right: 20),
                                padding: getPadding(
                                    left: 16, top: 17, right: 16, bottom: 17),
                                decoration: AppDecoration.fillOnPrimary
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .roundedBorder16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                                "lbl_description"
                                                    .tr
                                                    .toUpperCase(),
                                                style: theme
                                                    .textTheme.titleLarge),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowright,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(top: 2))
                                          ]),
                                      Padding(
                                          padding: getPadding(top: 15),
                                          child: Text("lbl_xd".tr,
                                              style:
                                                  theme.textTheme.bodyLarge)),
                                      Padding(
                                          padding: getPadding(top: 18),
                                          child: Container(
                                              height: getVerticalSize(8),
                                              width: getHorizontalSize(342),
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray600,
                                                  borderRadius: BorderRadius.circular(
                                                      getHorizontalSize(4))),
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              4)),
                                                  child: LinearProgressIndicator(
                                                      value: 0.49,
                                                      backgroundColor:
                                                          appTheme.gray600,
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                                  Color>(
                                                              theme
                                                                  .colorScheme
                                                                  .primary))))),
                                      Padding(
                                          padding: getPadding(top: 11),
                                          child: Text("lbl_50_complate".tr,
                                              style:
                                                  theme.textTheme.bodyLarge))
                                    ])),
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 24, right: 20),
                                child: GridView.builder(
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            mainAxisExtent:
                                                getVerticalSize(172),
                                            crossAxisCount: 2,
                                            mainAxisSpacing:
                                                getHorizontalSize(16),
                                            crossAxisSpacing:
                                                getHorizontalSize(16)),
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 4,
                                    itemBuilder: (context, index) {
                                      WeekprogressItemModel model = controller
                                          .yourBodyCompositionConsistsComponentsModelObj
                                          .value
                                          .weekprogressItemList
                                          .value[index];
                                      return animation_function(
                                          index,
                                          WeekprogressItemWidget(model, index,
                                              onTapWeekprogress: () {
                                            onTapWeekprogress();
                                          }));
                                    }))
                          ])))
                    ])),
          )),
    );
  }

  onTapWeekprogress() {
    Get.toNamed(AppRoutes.weekOneScreen);
  }

  onTapArrowleftone() {
    Get.back();
  }
}
