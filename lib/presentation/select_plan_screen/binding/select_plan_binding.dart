import '../controller/select_plan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectPlanScreen.
///
/// This class ensures that the SelectPlanController is created when the
/// SelectPlanScreen is first loaded.
class SelectPlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectPlanController());
  }
}
