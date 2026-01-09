
import '../../../core/utils/image_constant.dart';
import 'chestworkout_item_model.dart';

/// This class defines the variables used in the [chest_home_exercise_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ChestHomeExerciseModel {
  static List<ChestworkoutItemModel> getChestHomeItem() {
    return [
      ChestworkoutItemModel(ImageConstant.imgCheastHomeExercise1, "Beginer",
          "Push press", true, false),
      ChestworkoutItemModel(ImageConstant.imgCheastHomeExercise2, "Intermediate",
          "Bent-over Row", false, true),
      ChestworkoutItemModel(ImageConstant.imgCheastHomeExercise3, "Beginer",
          "Abdominal Crunches", true, false),
    ];
  }
}
