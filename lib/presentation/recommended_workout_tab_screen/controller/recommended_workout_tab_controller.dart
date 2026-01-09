import 'package:flutter/material.dart';

/// A controller class for the RecommendedWorkoutTabContainerScreen.
import 'package:gym_app/core/app_export.dart';

///
/// This class manages the state of the RecommendedWorkoutTabContainerScreen, including the
/// current recommendedWorkoutTabContainerModelObj
class RecommendedWorkoutTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // Rx<RecommendedWorkoutTabContainerModel>
  //     recommendedWorkoutTabContainerModelObj =
  //     RecommendedWorkoutTabContainerModel().obs;

  PageController pageController = PageController();
  late TabController tabviewController = TabController(vsync: this, length: 3);
}
