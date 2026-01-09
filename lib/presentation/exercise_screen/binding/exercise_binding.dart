import '../controller/exercise_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ExerciseScreen.
///
/// This class ensures that the ExerciseController is created when the
/// ExerciseScreen is first loaded.
class ExerciseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExerciseController());
  }
}
