import 'package:gym_app/core/app_export.dart';import 'package:gym_app/presentation/my_profile_screen/models/my_profile_model.dart';/// A controller class for the MyProfileScreen.
///
/// This class manages the state of the MyProfileScreen, including the
/// current myProfileModelObj
class MyProfileController extends GetxController {Rx<MyProfileModel> myProfileModelObj = MyProfileModel().obs;

 }
