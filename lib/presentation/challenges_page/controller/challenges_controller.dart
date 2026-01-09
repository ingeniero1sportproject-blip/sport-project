import 'package:gym_app/core/app_export.dart';

import '../../workout_plan_page/models/workout_plan_model.dart';
import '../models/challenges_data.dart';

/// A controller class for the ChallengesPage.
///
/// This class manages the state of the ChallengesPage, including the
/// current challengesModelObj
class ChallengesController extends GetxController {
 List<WorkoutPlanModel> challengesData = ChallengesData.getChallengesData();
}
