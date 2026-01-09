import 'package:gym_app/presentation/select_muscle_screen/models/select_muscle_model.dart';

import '../../../core/utils/image_constant.dart';

class SelectMuscleData{
  static List<SelectMuscleModel> getSelectMuscleData(){
    return [
      SelectMuscleModel(ImageConstant.imgExercise1,"Chest",false),
      SelectMuscleModel(ImageConstant.imgExercise2,"Legs",false),
      SelectMuscleModel(ImageConstant.imgExercise3,"back",true),
      SelectMuscleModel(ImageConstant.imgExercise4,"triceps",false),
      SelectMuscleModel(ImageConstant.imgExercise5,"Abs",false),
      SelectMuscleModel(ImageConstant.imgExercise6,"Chest",true),
      SelectMuscleModel(ImageConstant.imgExercise7,"biceps",true),
      SelectMuscleModel(ImageConstant.imgExercise8,"buttocks",false),
      SelectMuscleModel(ImageConstant.imgExercise9,"Shoulders",false),
      SelectMuscleModel(ImageConstant.imgExercise10,"Traps",true),
      SelectMuscleModel(ImageConstant.imgExercise11,"Cardio",false),
      SelectMuscleModel(ImageConstant.imgExercise12,"Calf",true),
    ];
  }
}