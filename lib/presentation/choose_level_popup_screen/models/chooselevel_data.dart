import 'choose_level_popup_model.dart';

class CooseLevelData{
  static List<ChooseLevelPopupModel> getChooseLevel(){
    return [
      ChooseLevelPopupModel("Any",1),
      ChooseLevelPopupModel("Begginer",2),
      ChooseLevelPopupModel("Intermediate",3),
      ChooseLevelPopupModel("Advance",4),
    ];
  }
}