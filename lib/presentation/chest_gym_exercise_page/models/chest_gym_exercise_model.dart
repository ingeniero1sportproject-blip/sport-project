import 'package:gym_app/core/app_export.dart';

import 'chest_gym_item_model.dart';

/// This class defines the variables used in the [chest_gym_exercise_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ChestGymExerciseModel {
  static List<ChestGymItemModel> getChestGymItem() {
    return [
      ChestGymItemModel(ImageConstant.imgCheastGymExercise1, "Beginer",
          "bench press", true, false),
      ChestGymItemModel(ImageConstant.imgCheastGymExercise2, "Intermediate",
          "close gripbench press", false, true),
      ChestGymItemModel(ImageConstant.imgCheastGymExercise3, "Beginer",
          "incline press", true, false),
    ];
  }
}
