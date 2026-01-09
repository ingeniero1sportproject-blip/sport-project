import '../controller/select_muscle_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectMuscleOneScreen.
///
/// This class ensures that the SelectMuscleOneController is created when the
/// SelectMuscleOneScreen is first loaded.
class SelectMuscleOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectMuscleOneController());
  }
}
