import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/week_one_screen/models/week_one_model.dart';

import '../models/dayexercise_item_model.dart';

/// A controller class for the WeekOneScreen.
///
/// This class manages the state of the WeekOneScreen, including the
/// current weekOneModelObj
class WeekOneController extends GetxController {
 List<DayexerciseItemModel> getweekList = WeekOneModel.getWeekList();
}
