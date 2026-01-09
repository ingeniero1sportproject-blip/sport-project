import '../controller/blog_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BlogScreen.
///
/// This class ensures that the BlogController is created when the
/// BlogScreen is first loaded.
class BlogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BlogController());
  }
}
