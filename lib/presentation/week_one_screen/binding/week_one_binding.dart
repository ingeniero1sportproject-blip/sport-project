import '../controller/week_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WeekOneScreen.
///
/// This class ensures that the WeekOneController is created when the
/// WeekOneScreen is first loaded.
class WeekOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WeekOneController());
  }
}
