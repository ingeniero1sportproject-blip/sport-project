import 'package:flutter/material.dart';

/// A controller class for the SignupPage.
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/signup_page/models/signup_model.dart';

///
/// This class manages the state of the SignupPage, including the
/// current signupModelObj
class SignupController extends GetxController {
  SignupController(this.signupModelObj);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignupModel> signupModelObj;

  Rx<bool> isShowPassword = true.obs;


}
