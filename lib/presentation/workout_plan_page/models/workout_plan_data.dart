import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/workout_plan_page/models/workout_plan_model.dart';

class WorkOutPlanData{
  static List<WorkoutPlanModel> getQuickStretches(){
    return [
      WorkoutPlanModel(ImageConstant.imgQuickStretches1,"strength and bulk beginner work..","Beginner",8,false,false),
      WorkoutPlanModel(ImageConstant.imgQuickStretches2,"beginner quick start workout plan","Beginner",8,false,false),
    ];
  }
  static List<WorkoutPlanModel> getQuick2ndStretches(){
    return [
      WorkoutPlanModel(ImageConstant.imgQuick2ndStretches1,"bench press this beginner life","Beginner",9,false,false),
      WorkoutPlanModel(ImageConstant.imgQuick2ndStretches2,"beginner quick start workout plan","Beginner",9,false,false),
    ];
  }
  static List<WorkoutPlanModel> getFatLoss(){
    return [
      WorkoutPlanModel(ImageConstant.imgfatLoss1,"bench press this beginner life","Beginner",9,true,false),
      WorkoutPlanModel(ImageConstant.imgfatLoss2,"beginner quick start workout plan","Beginner",9,false,false),
    ];
  }
  static List<WorkoutPlanModel> getMuscleBuilding(){
    return [
      WorkoutPlanModel(ImageConstant.imgMuscleBuilding1,"close grip bence press","Beginner",9,false,false),
      WorkoutPlanModel(ImageConstant.imgMuscleBuilding2,"beginner quick start workout plan","Beginner",9,false,false),
    ];
  }
  static List<WorkoutPlanModel> getMassGain(){
    return [
      WorkoutPlanModel(ImageConstant.imgMassgain1,"ittense mass building work..","Beginner",2,false,false),
      WorkoutPlanModel(ImageConstant.imgMassgain2,"beginner quick start workout plan","Beginner",2,false,false),
    ];
  }
  static List<WorkoutPlanModel> getPowerlifting(){
    return [
      WorkoutPlanModel(ImageConstant.imgPowerlifting1,"bulk","Beginner",2,false,false),
      WorkoutPlanModel(ImageConstant.imgPowerlifting2,"50 pullupst workout plan","Beginner",2,false,false),
    ];
  }
  static List<WorkoutPlanModel> getGainStrength(){
    return [
      WorkoutPlanModel(ImageConstant.imggainStrength1,"beginner quick start","Beginner",2,false,false),
      WorkoutPlanModel(ImageConstant.imggainStrength1,"workout plant plan","Beginner",2,false,false),
    ];
  }
}