import 'package:get/get.dart';import 'weekprogress_item_model.dart';/// This class defines the variables used in the [your_body_composition_consists_components_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class YourBodyCompositionConsistsComponentsModel {Rx<List<WeekprogressItemModel>> weekprogressItemList = Rx(List.generate(4,(index) => WeekprogressItemModel()));

 }
