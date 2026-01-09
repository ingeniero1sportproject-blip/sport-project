import 'package:gym_app/core/app_export.dart';import 'package:gym_app/presentation/select_muscle_one_screen/models/select_muscle_one_model.dart';/// A controller class for the SelectMuscleOneScreen.
///
/// This class manages the state of the SelectMuscleOneScreen, including the
/// current selectMuscleOneModelObj
class SelectMuscleOneController extends GetxController {Rx<SelectMuscleOneModel> selectMuscleOneModelObj = SelectMuscleOneModel().obs;

 }
