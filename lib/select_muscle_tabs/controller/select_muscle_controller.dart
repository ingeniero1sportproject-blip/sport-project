import 'package:get/get.dart';

import '../model/select_muscle_tabs_data.dart';
import '../model/select_muscle_tabs_data_model.dart';

class SelectMusclesTabsController extends GetxController{
  List<SelectMuscleTabsDataModel> gymExercise = SelectMuscleTabData.getGymExercirseData();
  List<SelectMuscleTabsDataModel> homeExercise = SelectMuscleTabData.getHomeExercirseData();
  List<SelectMuscleTabsDataModel> stretchesExercise = SelectMuscleTabData.getStretchesExercirseData();

  void setSelectPos(SelectMuscleTabsDataModel data) {
    data.isSelected = !data.isSelected!;
    update();
  }

}