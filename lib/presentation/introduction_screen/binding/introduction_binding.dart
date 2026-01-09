import '../controller/introduction_controller.dart';
import 'package:get/get.dart';

/// A binding class for the IntroductionScreen.
///
/// This class ensures that the IntroductionController is created when the
/// IntroductionScreen is first loaded.
class IntroductionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntroductionController());
  }
}
