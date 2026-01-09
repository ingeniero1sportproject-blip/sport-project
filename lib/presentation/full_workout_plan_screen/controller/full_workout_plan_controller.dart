import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/detail_gym_page/models/detail_gym_model.dart';
import 'package:gym_app/presentation/full_workout_plan_screen/models/full_workout_plan_model.dart';

import '../models/full_workout_plan_screen_data.dart';
import '../models/more_related_exercise_data_model.dart';

/// A controller class for the FullWorkoutPlanScreen.
///
/// This class manages the state of the FullWorkoutPlanScreen, including the
/// current fullWorkoutPlanModelObj
class FullWorkoutPlanController extends GetxController {
  DetailModel? currentPlan;
  String? currentPlantImage;
  String? currentPlantLike;
  String? currentPlanttitle;
  String? currentPlantLevel;

  List<FullWorkoutPlanPrimaryMuscleModel> primaryMuscleData =  FulWorkoutPlanData.getPrimaryMuscle();
  List<FullWorkoutPlanPrimaryMuscleModel> secondryMuscleData =  FulWorkoutPlanData.getSecondaryMuscle();
  List<MoreReletedExercise> reletedExercise = FulWorkoutPlanData.getReletedExercise();

  void setCurrentWorkoutPlan(DetailModel data) {
    currentPlan = data;
    update();

  }



  void setFav() {
    currentPlan!.isFav = !currentPlan!.isFav!;
    update();
  }
}
