import '../controller/popular_work_out_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PopularWorkOutScreen.
///
/// This class ensures that the PopularWorkOutController is created when the
/// PopularWorkOutScreen is first loaded.
class PopularWorkOutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PopularWorkOutController());
  }
}
