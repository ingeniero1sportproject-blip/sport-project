import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../trending_screen/models/trending_item_model.dart';

class TrendingDetailScreenController extends GetxController  with GetSingleTickerProviderStateMixin{
  PageController pageController = PageController();
  late TabController tabviewController =
  Get.put(TabController(vsync: this, length: 2));
  TrendingItemModel? currentWorkout;

  void setCurrentWorkOut(TrendingItemModel popularWorkItemModelObj) {
    currentWorkout = popularWorkItemModelObj;
    update();

  }
}
