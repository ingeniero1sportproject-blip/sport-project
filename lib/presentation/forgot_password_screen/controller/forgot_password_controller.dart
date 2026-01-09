import 'package:flutter/material.dart';

/// A controller class for the ForgotPasswordScreen.
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/forgot_password_screen/models/forgot_password_model.dart';

///
/// This class manages the state of the ForgotPasswordScreen, including the
/// current forgotPasswordModelObj
class ForgotPasswordController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<ForgotPasswordModel> forgotPasswordModelObj = ForgotPasswordModel().obs;


}
