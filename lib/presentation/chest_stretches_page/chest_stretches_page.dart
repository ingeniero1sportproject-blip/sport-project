import '../chest_stretches_page/widgets/exerciseprofile_item_widget.dart';
import 'controller/chest_stretches_controller.dart';
import 'models/exerciseprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';

class ChestStretchesPage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  ChestStretchesPage({Key? key})
      : super(
          key: key,
        );

  @override
  State<ChestStretchesPage> createState() => _ChestStretchesPageState();
}

class _ChestStretchesPageState extends State<ChestStretchesPage> {
  ChestStretchesController controller =
      Get.put(ChestStretchesController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return GetBuilder<ChestStretchesController>(
      init: ChestStretchesController(),
      builder: (controller) => Container(
        width: double.maxFinite,
        decoration: AppDecoration.fillOnErrorContainer,
        child: Padding(
          padding: getPadding(
            left: 20,
            top: 24,
            right: 20,
          ),
          child: ListView.separated(
            // ignore: prefer_const_constructors
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
                context,
                index,
                ) {
              return SizedBox(
                height: getVerticalSize(16),
              );
            },
            itemCount: controller.cheaststretch.length,
            itemBuilder: (context, index) {
              ExerciseprofileItemModel model = controller.cheaststretch[index];
              return animation_function(index, ExerciseprofileItemWidget(
                model,
              ));
            },
          ),
        ),
      ),
    );







  }
}
