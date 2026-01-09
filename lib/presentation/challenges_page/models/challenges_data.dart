import 'package:gym_app/core/app_export.dart';

import '../../workout_plan_page/models/workout_plan_model.dart';

class ChallengesData{
  static List<WorkoutPlanModel> getChallengesData(){
    return [
      WorkoutPlanModel(ImageConstant.imgChallenges1,"300 squats","Begginer",15,true,false),
      WorkoutPlanModel(ImageConstant.imgChallenges2,"Muscle","Begginer",12,false,false),
      WorkoutPlanModel(ImageConstant.imgChallenges3,"100 push-ups","Begginer",12,false,false),
      WorkoutPlanModel(ImageConstant.imgChallenges4,"300 sit-ups","Begginer",21,true,false),
      WorkoutPlanModel(ImageConstant.imgChallenges5,"run 40 minites","Begginer",12,false,false),
      WorkoutPlanModel(ImageConstant.imgChallenges6,"run 5 km","Begginer",21,false,false),
      WorkoutPlanModel(ImageConstant.imgChallenges7,"150 lauges","Begginer",9,true,false),
    ];
  }
}