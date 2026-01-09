import '../controller/find_a_workout_plan_choose_goal.dart';
import 'package:get/get.dart';

/// A binding class for the FindAWorkoutPlanChooseGoalScreen.
///
/// This class ensures that the FindAWorkoutPlanChooseGoalController is created when the
/// FindAWorkoutPlanChooseGoalScreen is first loaded.
class FindAWorkoutPlanChooseGoalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FindAWorkoutPlanChooseGoalController());
  }
}
