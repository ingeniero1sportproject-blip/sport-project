import '../controller/find_a_workout_plan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FindAWorkoutPlanScreen.
///
/// This class ensures that the FindAWorkoutPlanController is created when the
/// FindAWorkoutPlanScreen is first loaded.
class FindAWorkoutPlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FindAWorkoutPlanController());
  }
}
