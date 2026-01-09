import 'package:gym_app/core/app_export.dart';

import '../models/chest_gym_exercise_model.dart';
import '../models/chest_gym_item_model.dart';

/// A controller class for the ChestGymExercisePage.
///
/// This class manages the state of the ChestGymExercisePage, including the
/// current chestGymExerciseModelObj
class ChestGymExerciseController extends GetxController {
  List<ChestGymItemModel> cheastGym  = ChestGymExerciseModel.getChestGymItem();

  void setFavourite(ChestGymItemModel chestGymItemModelObj) {
    chestGymItemModelObj.isFavourite = !chestGymItemModelObj.isFavourite!;
    update();
  }


}
