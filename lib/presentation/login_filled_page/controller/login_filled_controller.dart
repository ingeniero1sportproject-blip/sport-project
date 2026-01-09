import 'package:flutter/material.dart';

/// A controller class for the LoginFilledPage.
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/login_filled_page/models/login_filled_model.dart';

///
/// This class manages the state of the LoginFilledPage, including the
/// current loginFilledModelObj
class LoginFilledController extends GetxController {
  LoginFilledController(this.loginFilledModelObj);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginFilledModel> loginFilledModelObj;

  Rx<bool> isShowPassword = true.obs;


}
