import '../controller/blog_detail_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BlogDetailScreen.
///
/// This class ensures that the BlogDetailController is created when the
/// BlogDetailScreen is first loaded.
class BlogDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BlogDetailController());
  }
}
