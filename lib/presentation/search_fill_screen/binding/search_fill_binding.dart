import '../controller/search_fill_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchFillScreen.
///
/// This class ensures that the SearchFillController is created when the
/// SearchFillScreen is first loaded.
class SearchFillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchFillController());
  }
}
