import 'package:gym_app/core/app_export.dart';import 'package:gym_app/presentation/login_page/models/login_model.dart';import 'package:flutter/material.dart';/// A controller class for the LoginPage.
///
/// This class manages the state of the LoginPage, including the
/// current loginModelObj
class LoginController extends GetxController {LoginController(this.loginModelObj);

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<LoginModel> loginModelObj;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); } 
 }
