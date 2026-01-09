import 'package:flutter/cupertino.dart';

import '../core/app_export.dart';
import '../widgets/custom_icon_button.dart';
import 'controller/select_muscle_controller.dart';
import 'model/select_muscle_tabs_data_model.dart';

class StretchesExerciseTab extends StatefulWidget {
  const StretchesExerciseTab({super.key});

  @override
  State<StretchesExerciseTab> createState() => _StretchesExerciseTabState();
}

class _StretchesExerciseTabState extends State<StretchesExerciseTab> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectMusclesTabsController>(
      init: SelectMusclesTabsController(),
      builder: (controller) => Container(
        width: double.maxFinite,
        padding: getPadding(left: 20, right: 20, top: 16, bottom: 16),
        child: GridView.builder(
          primary: false,
          shrinkWrap: true,
          itemCount: controller.stretchesExercise.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: getVerticalSize(247),
              crossAxisCount: 2,
              mainAxisSpacing: getHorizontalSize(16),
              crossAxisSpacing: getHorizontalSize(16)),
          itemBuilder: (context, index) {
            SelectMuscleTabsDataModel data = controller.stretchesExercise[index];
            return animation_function(index, GestureDetector(
              onTap: () {
                controller.setSelectPos(data);
              },
              child: Container(
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                      border: Border.all(
                          color: data.isSelected!
                              ? appTheme.buttonColor
                              : appTheme.dark3Color)),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(top: 8, left: 8, right: 8),
                          child: SizedBox(
                            width: double.infinity,
                            child: Stack(
                              children: [
                                CustomImageView(
                                    imagePath: data.image!,
                                    fit: BoxFit.fill,
                                    height: getVerticalSize(167),
                                    width: getHorizontalSize(163),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(16))),
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
                                    svgPath:
                                    ImageConstant.imgPremiumquality,
                                  ),
                                )
                                    : SizedBox(),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                            padding: getPadding(top: 7, left: 8, right: 8),
                            child: Text(
                              data.title!.toUpperCase(),
                              // style: theme.textTheme.titleLarge,
                              style: CustomTextStyles.bodyMediumSfproDisplay18,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            )),
                        Padding(
                            padding: getPadding(top: 0, bottom: 1),
                            child: Text("${data.status}(${data.time})",
                                style: CustomTextStyles.bodyLargeGray600))
                      ])),
            ));
          },
        ),
      ),
    );
  }
}
