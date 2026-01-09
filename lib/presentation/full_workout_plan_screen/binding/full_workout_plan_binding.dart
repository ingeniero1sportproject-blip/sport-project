import '../controller/full_workout_plan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FullWorkoutPlanScreen.
///
/// This class ensures that the FullWorkoutPlanController is created when the
/// FullWorkoutPlanScreen is first loaded.
class FullWorkoutPlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FullWorkoutPlanController());
  }
}
