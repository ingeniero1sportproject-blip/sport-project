import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/chest_home_exercise_page/models/chest_home_exercise_model.dart';

import '../models/chestworkout_item_model.dart';

/// A controller class for the ChestHomeExercisePage.
///
/// This class manages the state of the ChestHomeExercisePage, including the
/// current chestHomeExerciseModelObj
class ChestHomeExerciseController extends GetxController {
 List<ChestworkoutItemModel> chestGymHome = ChestHomeExerciseModel.getChestHomeItem();

  void setFavourite(ChestworkoutItemModel chestworkoutItemModelObj) {
   chestworkoutItemModelObj.isFavourite = !chestworkoutItemModelObj.isFavourite!;
   update();
  }
}
