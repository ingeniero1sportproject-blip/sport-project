import '../controller/find_a_workout_weeks_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FindAWorkoutPlanChooseNumberWeeksScreen.
///
/// This class ensures that the FindAWorkoutPlanChooseNumberWeeksController is created when the
/// FindAWorkoutPlanChooseNumberWeeksScreen is first loaded.
class FindAWorkoutPlanChooseNumberWeeksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FindAWorkoutPlanChooseNumberWeeksController());
  }
}
