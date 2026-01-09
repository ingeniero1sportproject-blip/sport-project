import '../controller/recommended_workout_tab_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RecommendedWorkoutTabContainerScreen.
///
/// This class ensures that the RecommendedWorkoutTabContainerController is created when the
/// RecommendedWorkoutTabContainerScreen is first loaded.
class RecommendedWorkoutTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecommendedWorkoutTabContainerController());
  }
}
