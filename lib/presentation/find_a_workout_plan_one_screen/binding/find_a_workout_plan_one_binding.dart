import '../controller/find_a_workout_plan_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FindAWorkoutPlanOneScreen.
///
/// This class ensures that the FindAWorkoutPlanOneController is created when the
/// FindAWorkoutPlanOneScreen is first loaded.
class FindAWorkoutPlanOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FindAWorkoutPlanOneController());
  }
}
