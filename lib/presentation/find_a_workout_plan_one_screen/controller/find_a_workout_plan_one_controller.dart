import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/find_a_workout_plan_one_screen/models/find_a_workout_plan_one_model.dart';

/// A controller class for the FindAWorkoutPlanOneScreen.
///
/// This class manages the state of the FindAWorkoutPlanOneScreen, including the
/// current findAWorkoutPlanOneModelObj
class FindAWorkoutPlanOneController extends GetxController {
  Rx<FindAWorkoutPlanOneModel> findAWorkoutPlanOneModelObj =
      FindAWorkoutPlanOneModel().obs;
String? currentGoal = "Any";
String? currentLevel = "Any";
int? currentWeek = 3;
int? currentWeekdays = 7;
  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  onSelected(dynamic value) {
    for (var element
        in findAWorkoutPlanOneModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    findAWorkoutPlanOneModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element
        in findAWorkoutPlanOneModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    findAWorkoutPlanOneModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    for (var element
        in findAWorkoutPlanOneModelObj.value.dropdownItemList2.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    findAWorkoutPlanOneModelObj.value.dropdownItemList2.refresh();
  }

  onSelected3(dynamic value) {
    for (var element
        in findAWorkoutPlanOneModelObj.value.dropdownItemList3.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    findAWorkoutPlanOneModelObj.value.dropdownItemList3.refresh();
  }
}
