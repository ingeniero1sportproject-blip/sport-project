import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/login_filled_tab_container_screen/models/login_filled_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginFilledTabContainerScreen.
///
/// This class manages the state of the LoginFilledTabContainerScreen, including the
/// current loginFilledTabContainerModelObj
class LoginFilledTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<LoginFilledTabContainerModel> loginFilledTabContainerModelObj =
      LoginFilledTabContainerModel().obs;
PageController pageController = PageController();
  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
