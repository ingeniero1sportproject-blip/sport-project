import '../controller/health_tips_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HealthTipsScreen.
///
/// This class ensures that the HealthTipsController is created when the
/// HealthTipsScreen is first loaded.
class HealthTipsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HealthTipsController());
  }
}
