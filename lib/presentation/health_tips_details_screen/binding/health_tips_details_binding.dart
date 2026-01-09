import '../controller/health_tips_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HealthTipsDetailsScreen.
///
/// This class ensures that the HealthTipsDetailsController is created when the
/// HealthTipsDetailsScreen is first loaded.
class HealthTipsDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HealthTipsDetailsController());
  }
}
