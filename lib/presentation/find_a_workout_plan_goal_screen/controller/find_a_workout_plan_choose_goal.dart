
/// A controller class for the FindAWorkoutPlanChooseGoalScreen.
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/find_a_workout_plan_goal_screen/models/find_a_workout_plan_choose_goal_model.dart';

import '../models/goal_data.dart';

///
/// This class manages the state of the FindAWorkoutPlanChooseGoalScreen, including the
/// current findAWorkoutPlanChooseGoalModelObj
class FindAWorkoutPlanChooseGoalController extends GetxController {

  List<FindAWorkoutPlanChooseGoalModel>goalList =  GoalData.getChooseGoal();



}
