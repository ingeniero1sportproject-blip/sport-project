import 'package:get/get.dart';
import 'package:gym_app/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [find_a_workout_plan_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FindAWorkoutPlanOneModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Test",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Test",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Test",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Begginer",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Intermediate",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Intermediate",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList2 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "4",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "6",
    ),
    SelectionPopupModel(
      id: 3,
      title: "8",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList3 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "4",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "6",
    ),
    SelectionPopupModel(
      id: 3,
      title: "8",
    )
  ]);
}
