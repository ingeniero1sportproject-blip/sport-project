import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../recommended_workout_one_screen/models/recommended_workout_one_model.dart';

class RecommendedWorkoutDetailController extends GetxController with GetSingleTickerProviderStateMixin{
  PageController pageController = PageController();
  late TabController tabviewController =
  Get.put(TabController(vsync: this, length: 2));
  RecommendedWorkoutOneModel? currentWorkout;

  void setCurrentWorkOut(RecommendedWorkoutOneModel popularWorkItemModelObj) {
    currentWorkout = popularWorkItemModelObj;
    update();

  }
}