
/// A controller class for the WorkoutPlanPage.
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/workout_plan_page/models/workout_plan_model.dart';

import '../models/workout_plan_data.dart';

///
/// This class manages the state of the WorkoutPlanPage, including the
/// current workoutPlanModelObj
class WorkoutPlanController extends GetxController {
 List<WorkoutPlanModel> quickStretches =  WorkOutPlanData.getQuickStretches();
 List<WorkoutPlanModel> quick2ndStretches =  WorkOutPlanData.getQuick2ndStretches();
 List<WorkoutPlanModel> fatLoss =  WorkOutPlanData.getFatLoss();
 List<WorkoutPlanModel> muscleBuilding =  WorkOutPlanData.getMuscleBuilding();
 List<WorkoutPlanModel> massGain =  WorkOutPlanData.getMassGain();
 List<WorkoutPlanModel> powerlifting =  WorkOutPlanData.getPowerlifting();
 List<WorkoutPlanModel> gainStrength =  WorkOutPlanData.getGainStrength();


}
