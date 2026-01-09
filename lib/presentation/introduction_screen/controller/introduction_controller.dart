import 'package:gym_app/core/app_export.dart';import 'package:gym_app/presentation/introduction_screen/models/introduction_model.dart';/// A controller class for the IntroductionScreen.
///
/// This class manages the state of the IntroductionScreen, including the
/// current introductionModelObj
class IntroductionController extends GetxController {Rx<IntroductionModel> introductionModelObj = IntroductionModel().obs;

 }
