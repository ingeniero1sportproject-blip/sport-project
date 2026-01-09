import '../controller/your_body_components_controller.dart';
import '../models/weekprogress_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';

// ignore: must_be_immutable
class WeekprogressItemWidget extends StatelessWidget {
  WeekprogressItemWidget(
    this.weekprogressItemModelObj,this.index, {
    Key? key,
    this.onTapWeekprogress,
  }) : super(
          key: key,
        );

  WeekprogressItemModel weekprogressItemModelObj;
  int? index;

  YourBodyCompositionConsistsComponentsController controller = Get.put(YourBodyCompositionConsistsComponentsController());

  VoidCallback? onTapWeekprogress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapWeekprogress?.call();
      },
      child: Container(
        // padding: getPadding(
          // left: 64,
          // top: 25,
          // right: 64,
          // bottom: 25,
        // ),
        decoration: AppDecoration.fillOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgVector,
              height: getSize(44),
              width: getSize(44),
              margin: getMargin(
                top: 4,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 8,
              ),
              child: Text(
                "week ${index! + 1}".toUpperCase(),
                // style: theme.textTheme.titleLarge,
                style: CustomTextStyles.bodyMediumSfproDisplay22,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 0,
              ),
              child: Text(
                "lbl_0_days".tr,
                style: CustomTextStyles.bodyLargeGray600,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
