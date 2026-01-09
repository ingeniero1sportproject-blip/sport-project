
import 'package:get/get.dart';

import '../controller/select_muscle_tab_controller.dart';

/// A binding class for the SelectMuscleScreen.
///
/// This class ensures that the SelectMuscleController is created when the
/// SelectMuscleScreen is first loaded.
class SelectMuscleTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SeletMuscleTabController());
  }
}
