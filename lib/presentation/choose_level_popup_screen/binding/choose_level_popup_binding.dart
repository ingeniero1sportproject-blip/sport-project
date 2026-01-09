import '../controller/choose_level_popup_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChooseLevelPopupScreen.
///
/// This class ensures that the ChooseLevelPopupController is created when the
/// ChooseLevelPopupScreen is first loaded.
class ChooseLevelPopupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseLevelPopupController());
  }
}
