import '../controller/sets_and_reps_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SetsAndRepsScreen.
///
/// This class ensures that the SetsAndRepsController is created when the
/// SetsAndRepsScreen is first loaded.
class SetsAndRepsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetsAndRepsController());
  }
}
