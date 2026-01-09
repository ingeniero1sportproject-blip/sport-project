import 'package:gym_app/core/app_export.dart';

import 'healthdefinitio_item_model.dart';

/// This class defines the variables used in the [health_tips_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HealthTipsModel {
  // Rx<List<HealthdefinitioItemModel>> healthdefinitioItemList =
  //     Rx(List.generate(3, (index) => HealthdefinitioItemModel()));

 static List<HealthdefinitioItemModel> getHealthTipsData(){
  return [
   HealthdefinitioItemModel(ImageConstant.imgHelthTips1,"Body","What is the definition of the word health","50 min","550 kcal",true,false),
   HealthdefinitioItemModel(ImageConstant.imgHelthTips2,"Weight","Wellness is commonly viewed seven dimensins","60 min","150 kcal",false,false),
   HealthdefinitioItemModel(ImageConstant.imgHelthTips3,"Dumbells","Can you build muscle with 20Kg dumbbells","30 min","450 kcal",true,false),
  ];
 }
}
