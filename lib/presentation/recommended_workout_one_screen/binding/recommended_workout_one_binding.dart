import '../controller/recommended_workout_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RecommendedWorkoutOneScreen.
///
/// This class ensures that the RecommendedWorkoutOneController is created when the
/// RecommendedWorkoutOneScreen is first loaded.
class RecommendedWorkoutOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecommendedWorkoutOneController());
  }
}
