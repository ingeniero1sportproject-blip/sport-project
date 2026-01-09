
import 'package:get/get.dart';

import '../controller/trending_detail_screen_controller.dart';

/// A binding class for the DetailGymTabContainerScreen.
///
/// This class ensures that the DetailGymTabContainerController is created when the
/// DetailGymTabContainerScreen is first loaded.
class TrendingDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrendingDetailScreenController());
  }
}
