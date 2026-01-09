import 'package:gym_app/core/app_export.dart';

import 'full_workout_plan_model.dart';
import 'more_related_exercise_data_model.dart';

class FulWorkoutPlanData{
  static List<FullWorkoutPlanPrimaryMuscleModel> getPrimaryMuscle(){
    return [
      FullWorkoutPlanPrimaryMuscleModel(ImageConstant.imgPrimaryMuscle1,"chest",true),
    ];
  }

  static List<FullWorkoutPlanPrimaryMuscleModel> getSecondaryMuscle(){
    return [
      FullWorkoutPlanPrimaryMuscleModel(ImageConstant.imgSecondryMuscle1,"shoulder",true),
      FullWorkoutPlanPrimaryMuscleModel(ImageConstant.imgSecondryMuscle2,"triceps",true),
    ];
  }

  static List<MoreReletedExercise> getReletedExercise(){
    return [
      MoreReletedExercise(ImageConstant.imgReletedExecirse1,"close grip bence press","Intermediate (Chest)"),
      MoreReletedExercise(ImageConstant.imgReletedExecirse2,"incline press","Chest (Intermediate)"),
      MoreReletedExercise(ImageConstant.imgReletedExecirse3,"decline press","Chest (Beginner)"),
      MoreReletedExercise(ImageConstant.imgReletedExecirse4,"Push ups","Beginner (Chest)"),
      MoreReletedExercise(ImageConstant.imgReletedExecirse5,"parallel bar dips","Chest (Beginner)"),
      MoreReletedExercise(ImageConstant.imgReletedExecirse6,"dumbbell flys","Chest (Beginner)"),
    ];
  }
}