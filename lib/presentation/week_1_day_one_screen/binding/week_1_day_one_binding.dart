import '../controller/week_1_day_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Week1DayOneScreen.
///
/// This class ensures that the Week1DayOneController is created when the
/// Week1DayOneScreen is first loaded.
class Week1DayOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Week1DayOneController());
  }
}
