import '../controller/wishlist_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WishlistScreen.
///
/// This class ensures that the WishlistController is created when the
/// WishlistScreen is first loaded.
class WishlistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WishlistController());
  }
}
