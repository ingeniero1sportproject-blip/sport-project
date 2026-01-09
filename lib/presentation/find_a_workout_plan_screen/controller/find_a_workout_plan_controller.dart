import 'package:gym_app/core/app_export.dart';import 'package:gym_app/presentation/find_a_workout_plan_screen/models/find_a_workout_plan_model.dart';/// A controller class for the FindAWorkoutPlanScreen.
///
/// This class manages the state of the FindAWorkoutPlanScreen, including the
/// current findAWorkoutPlanModelObj
class FindAWorkoutPlanController extends GetxController {Rx<FindAWorkoutPlanModel> findAWorkoutPlanModelObj = FindAWorkoutPlanModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

SelectionPopupModel? selectedDropDownValue3;

onSelected(dynamic value) { for (var element in findAWorkoutPlanModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} findAWorkoutPlanModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in findAWorkoutPlanModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} findAWorkoutPlanModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in findAWorkoutPlanModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} findAWorkoutPlanModelObj.value.dropdownItemList2.refresh(); } 
onSelected3(dynamic value) { for (var element in findAWorkoutPlanModelObj.value.dropdownItemList3.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} findAWorkoutPlanModelObj.value.dropdownItemList3.refresh(); } 
 }
