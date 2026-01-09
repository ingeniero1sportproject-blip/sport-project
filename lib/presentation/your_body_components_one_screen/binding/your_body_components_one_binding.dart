import '../controller/your_body_components_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the YourBodyCompositionConsistsComponentsOneScreen.
///
/// This class ensures that the YourBodyCompositionConsistsComponentsOneController is created when the
/// YourBodyCompositionConsistsComponentsOneScreen is first loaded.
class YourBodyCompositionConsistsComponentsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => YourBodyCompositionConsistsComponentsOneController());
  }
}
