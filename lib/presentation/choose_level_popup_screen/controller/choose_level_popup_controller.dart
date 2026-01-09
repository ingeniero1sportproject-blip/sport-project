
/// A controller class for the ChooseLevelPopupScreen.
import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/choose_level_popup_screen/models/choose_level_popup_model.dart';

import '../models/chooselevel_data.dart';

///
/// This class manages the state of the ChooseLevelPopupScreen, including the
/// current chooseLevelPopupModelObj
class ChooseLevelPopupController extends GetxController {
 List<ChooseLevelPopupModel> chooseLevelOption = CooseLevelData.getChooseLevel();
}
