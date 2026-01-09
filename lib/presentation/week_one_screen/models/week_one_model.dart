
import 'dayexercise_item_model.dart';

/// This class defines the variables used in the [week_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WeekOneModel {
  // Rx<List<DayexerciseItemModel>> dayexerciseItemList =
  //     Rx(List.generate(7, (index) => DayexerciseItemModel()));
 static List<DayexerciseItemModel> getWeekList(){
  return [
   DayexerciseItemModel(1,6,1),
   DayexerciseItemModel(2,6,2),
   DayexerciseItemModel(3,6,3),
   DayexerciseItemModel(4,6,4),
   DayexerciseItemModel(5,6,5),
   DayexerciseItemModel(6,6,6),
   DayexerciseItemModel(7,6,7),
  ];
 }
}
