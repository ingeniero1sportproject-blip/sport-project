
import '../../../core/utils/image_constant.dart';
import 'exerciseprofile_item_model.dart';

/// This class defines the variables used in the [chest_stretches_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ChestStretchesModel {
  static List<ExerciseprofileItemModel> getChestStretchItem() {
    return [
      ExerciseprofileItemModel(ImageConstant.imgCheastStretchExercise1, "Beginer",
          "Goblet Squats", true, false),
      ExerciseprofileItemModel(ImageConstant.imgCheastStretchExercise2, "Intermediate",
          "Pallof Press", false, true),
      ExerciseprofileItemModel(ImageConstant.imgCheastStretchExercise3, "Beginer",
          "Dumbbell Row", true, false),
    ];
  }
}
