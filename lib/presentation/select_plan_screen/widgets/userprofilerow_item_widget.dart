// ignore_for_file: deprecated_member_use

import '../controller/select_plan_controller.dart';
import '../models/userprofilerow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofilerowItemWidget extends StatelessWidget {
  UserprofilerowItemWidget(
    this.userprofilerowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilerowItemModel userprofilerowItemModelObj;

  var controller = Get.find<SelectPlanController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 10,
        right: 16,
        bottom: 10,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: getSize(48),
            width: getSize(48),
            margin: getMargin(
              top: 1,
              bottom: 1,
            ),

            decoration: IconButtonStyleHelper.fillOnErrorContainer,
            child: Center(child: Text(userprofilerowItemModelObj.title![0].toUpperCase(),style: CustomTextStyles.bodyMediumSfproDisplay22Uniform,)),


            // CustomImageView(
            //   svgPath: ImageConstant.imgIctext,
            // ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  userprofilerowItemModelObj.title!,
                  style: theme.textTheme.bodyLarge,
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,
                        ),
                        child: Text(
                          userprofilerowItemModelObj.subTitle!,
                          style: CustomTextStyles.bodyLargeGray600,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                        ),
                        child: SizedBox(
                          height: getVerticalSize(20),
                          child: VerticalDivider(
                            width: getHorizontalSize(1),
                            thickness: getVerticalSize(1),
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(1),
                            indent: getHorizontalSize(1),
                            endIndent: getHorizontalSize(2),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                        ),
                        child: Text(
                          userprofilerowItemModelObj.time!,
                          style: CustomTextStyles.bodyLargeGray600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgTrash,
            height: getSize(24),
            width: getSize(24),
            margin: getMargin(
              top: 13,
              bottom: 13,
            ),
          ),
        ],
      ),
    );
  }
}
