import '../controller/your_body_components_controller.dart';
import 'package:get/get.dart';

/// A binding class for the YourBodyCompositionConsistsComponentsScreen.
///
/// This class ensures that the YourBodyCompositionConsistsComponentsController is created when the
/// YourBodyCompositionConsistsComponentsScreen is first loaded.
class YourBodyCompositionConsistsComponentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => YourBodyCompositionConsistsComponentsController());
  }
}
