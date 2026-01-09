import 'package:get/get.dart';import 'wishlist_item_model.dart';/// This class defines the variables used in the [wishlist_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WishlistModel {Rx<List<WishlistItemModel>> wishlistItemList = Rx(List.generate(4,(index) => WishlistItemModel()));

 }
