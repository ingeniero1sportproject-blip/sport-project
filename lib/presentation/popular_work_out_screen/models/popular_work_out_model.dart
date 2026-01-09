import 'package:gym_app/core/app_export.dart';

import 'popular_work_item_model.dart';

/// This class defines the variables used in the [popular_work_out_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PopularWorkOutModel {
 static List<PopularWorkItemModel> getPopulerWorkoutData(){
  return [
   PopularWorkItemModel(ImageConstant.imgPopulerWorkout1,"Dumbells","Can you build muscle with 20Kg dumbbells","30 min","450 kcal",true),
   PopularWorkItemModel(ImageConstant.imgPopulerWorkout2,"Dumbells","Can you build muscle with 20Kg dumbbells","30 min","450 kcal",false),
   PopularWorkItemModel(ImageConstant.imgPopulerWorkout3,"Dumbells","Can you build muscle with 20Kg dumbbells","30 min","450 kcal",true),
  ];
 }
}
