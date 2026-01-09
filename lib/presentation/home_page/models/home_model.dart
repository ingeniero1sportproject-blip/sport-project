import 'package:get/get.dart';import 'healthtips_item_model.dart';/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {Rx<List<HealthtipsItemModel>> healthtipsItemList = Rx(List.generate(4,(index) => HealthtipsItemModel()));

 }
