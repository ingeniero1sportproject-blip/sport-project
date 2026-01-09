import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/select_muscle_screen/models/select_muscle_model.dart';

import '../models/select_muscle_data.dart';

/// A controller class for the SelectMuscleScreen.
///
/// This class manages the state of the SelectMuscleScreen, including the
/// current selectMuscleModelObj
class SelectMuscleController extends GetxController {
 List<SelectMuscleModel>  getMuscledata = SelectMuscleData.getSelectMuscleData();
}
