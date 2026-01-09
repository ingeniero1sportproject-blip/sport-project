import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/select_plan_screen/models/select_plan_model.dart';

import '../models/userprofilerow_item_model.dart';

/// A controller class for the SelectPlanScreen.
///
/// This class manages the state of the SelectPlanScreen, including the
/// current selectPlanModelObj
class SelectPlanController extends GetxController {
 List<UserprofilerowItemModel> plan = SelectPlanModel.getPlanData();
}
