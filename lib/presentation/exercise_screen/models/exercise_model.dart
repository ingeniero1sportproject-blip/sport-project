import 'package:gym_app/core/app_export.dart';

import 'exercise_item_model.dart';

/// This class defines the variables used in the [exercise_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExerciseModel {


  static List<ExerciseItemModel> getExecirseData(){
    return [
      ExerciseItemModel(ImageConstant.imgExercise1,"Chest",false),
      ExerciseItemModel(ImageConstant.imgExercise2,"Legs",false),
      ExerciseItemModel(ImageConstant.imgExercise3,"back",true),
      ExerciseItemModel(ImageConstant.imgExercise4,"triceps",false),
      ExerciseItemModel(ImageConstant.imgExercise5,"Abs",false),
      ExerciseItemModel(ImageConstant.imgExercise6,"Chest",true),
      ExerciseItemModel(ImageConstant.imgExercise7,"biceps",true),
      ExerciseItemModel(ImageConstant.imgExercise8,"buttocks",false),
      ExerciseItemModel(ImageConstant.imgExercise9,"Shoulders",false),
      ExerciseItemModel(ImageConstant.imgExercise10,"Traps",true),
      ExerciseItemModel(ImageConstant.imgExercise11,"Cardio",false),
      ExerciseItemModel(ImageConstant.imgExercise12,"Calf",true),
    ];
  }
}
