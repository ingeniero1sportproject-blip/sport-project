
/// A controller class for the FindAWorkoutPlanChooseNumberWeeksScreen.
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/find_a_workout_plan_number_weeks_screen/models/find_a_workout_weeks_model.dart';

import '../models/number_of_week_data.dart';

///
/// This class manages the state of the FindAWorkoutPlanChooseNumberWeeksScreen, including the
/// current findAWorkoutPlanChooseNumberWeeksModelObj
class FindAWorkoutPlanChooseNumberWeeksController extends GetxController {
  List<FindAWorkoutPlanChooseNumberWeeksModel> weekNumerList =  NumberOfWeek.getNumberOfWeek();
}
