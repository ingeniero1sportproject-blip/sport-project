import 'package:gym_app/core/app_export.dart';import 'package:gym_app/presentation/login_error_page/models/login_error_model.dart';import 'package:flutter/material.dart';/// A controller class for the LoginErrorPage.
///
/// This class manages the state of the LoginErrorPage, including the
/// current loginErrorModelObj
class LoginErrorController extends GetxController {LoginErrorController(this.loginErrorModelObj);

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<LoginErrorModel> loginErrorModelObj;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); } 
 }
