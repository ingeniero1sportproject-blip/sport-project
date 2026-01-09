import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/exercise_screen/models/exercise_model.dart';

import '../models/exercise_item_model.dart';

/// A controller class for the ExerciseScreen.
///
/// This class manages the state of the ExerciseScreen, including the
/// current exerciseModelObj
class ExerciseController extends GetxController {
 List<ExerciseItemModel> execirseData = ExerciseModel.getExecirseData();
}
