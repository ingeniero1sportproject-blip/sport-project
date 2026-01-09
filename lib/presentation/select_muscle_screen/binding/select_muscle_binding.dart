import '../controller/select_muscle_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectMuscleScreen.
///
/// This class ensures that the SelectMuscleController is created when the
/// SelectMuscleScreen is first loaded.
class SelectMuscleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectMuscleController());
  }
}
