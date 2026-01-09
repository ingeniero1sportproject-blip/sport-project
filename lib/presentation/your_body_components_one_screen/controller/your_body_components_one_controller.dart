import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/workout_plan_page/models/workout_plan_model.dart';

/// A controller class for the YourBodyCompositionConsistsComponentsOneScreen.
///
/// This class manages the state of the YourBodyCompositionConsistsComponentsOneScreen, including the
/// current yourBodyCompositionConsistsComponentsOneModelObj
class YourBodyCompositionConsistsComponentsOneController
    extends GetxController {
  WorkoutPlanModel? currentWorkout;

  void setCurrentWorkOuut(WorkoutPlanModel data) {
    currentWorkout = data;
    update();
  }
}
