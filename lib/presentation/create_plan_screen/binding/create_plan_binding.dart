import '../controller/create_plan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreatePlanScreen.
///
/// This class ensures that the CreatePlanController is created when the
/// CreatePlanScreen is first loaded.
class CreatePlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreatePlanController());
  }
}
