import '../controller/login_filled_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginFilledTabContainerScreen.
///
/// This class ensures that the LoginFilledTabContainerController is created when the
/// LoginFilledTabContainerScreen is first loaded.
class LoginFilledTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginFilledTabContainerController());
  }
}
