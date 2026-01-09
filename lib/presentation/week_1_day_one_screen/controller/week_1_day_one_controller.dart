import 'package:gym_app/core/app_export.dart';

import '../../detail_gym_page/models/detail_gym_model.dart';
import '../models/week1data.dart';/// A controller class for the Week1DayOneScreen.
///
/// This class manages the state of the Week1DayOneScreen, including the
/// current week1DayOneModelObj
class Week1DayOneController extends GetxController {
 List<DetailModel> week1stdata = Week1Data.getWeek1stData();

  void setChekPosition(DetailModel data) {
   data.isCheaked = !data.isCheaked!;
   update();

  }

 }
