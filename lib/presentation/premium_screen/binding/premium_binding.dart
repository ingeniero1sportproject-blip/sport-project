import '../controller/premium_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PremiumScreen.
///
/// This class ensures that the PremiumController is created when the
/// PremiumScreen is first loaded.
class PremiumBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PremiumController());
  }
}
