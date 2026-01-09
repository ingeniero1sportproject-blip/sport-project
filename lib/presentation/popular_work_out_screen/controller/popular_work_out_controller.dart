import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/popular_work_out_screen/models/popular_work_out_model.dart';

import '../models/popular_work_item_model.dart';

/// A controller class for the PopularWorkOutScreen.
///
/// This class manages the state of the PopularWorkOutScreen, including the
/// current popularWorkOutModelObj
class PopularWorkOutController extends GetxController {
 List<PopularWorkItemModel> populerworkoutData =PopularWorkOutModel.getPopulerWorkoutData();

 PopularWorkItemModel? currentWorkout;

  void setCurrentWorkOut(PopularWorkItemModel popularWorkItemModelObj) {
   currentWorkout = popularWorkItemModelObj;
   update();

  }
}
