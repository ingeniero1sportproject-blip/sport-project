
import 'userprofilerow_item_model.dart';

/// This class defines the variables used in the [select_plan_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectPlanModel {
 static List<UserprofilerowItemModel> getPlanData(){
  return [
   UserprofilerowItemModel("Test","Mass gain","8 Weeks"),
   UserprofilerowItemModel("Abcd","Mass gain","8 Weeks"),
   UserprofilerowItemModel("Lorem ipsum","Mass gain","8 Weeks"),
  ];
 }
}
