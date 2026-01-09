import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/recommended_workout_one_screen/models/recommended_workout_one_model.dart';

import '../models/recommended_data.dart';

/// A controller class for the RecommendedWorkoutOneScreen.
///
/// This class manages the state of the RecommendedWorkoutOneScreen, including the
/// current recommendedWorkoutOneModelObj
class RecommendedWorkoutOneController extends GetxController {
 List<RecommendedWorkoutOneModel> recommendedData = RecommendedData.getRecommendedData();
}
