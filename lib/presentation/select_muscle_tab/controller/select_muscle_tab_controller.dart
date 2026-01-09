import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SeletMuscleTabController extends GetxController  with GetSingleTickerProviderStateMixin{
  PageController pageController = PageController();
  late TabController tabviewController = TabController(vsync: this, length: 3);
}