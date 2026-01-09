import 'find_a_workout_weeks_model.dart';

class NumberOfWeek{
  static List<FindAWorkoutPlanChooseNumberWeeksModel> getNumberOfWeek(){
    return [
      FindAWorkoutPlanChooseNumberWeeksModel(3,1),
      FindAWorkoutPlanChooseNumberWeeksModel(4,2),
      FindAWorkoutPlanChooseNumberWeeksModel(6,3),
      FindAWorkoutPlanChooseNumberWeeksModel(8,4),
      FindAWorkoutPlanChooseNumberWeeksModel(10,5),
      FindAWorkoutPlanChooseNumberWeeksModel(12,6),
    ];
  }
}