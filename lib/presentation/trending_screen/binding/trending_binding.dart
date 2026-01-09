import '../controller/trending_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrendingScreen.
///
/// This class ensures that the TrendingController is created when the
/// TrendingScreen is first loaded.
class TrendingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrendingController());
  }
}
