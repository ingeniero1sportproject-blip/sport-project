import '../controller/detail_gym_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DetailGymTabContainerScreen.
///
/// This class ensures that the DetailGymTabContainerController is created when the
/// DetailGymTabContainerScreen is first loaded.
class DetailGymTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailGymTabContainerController());
  }
}
