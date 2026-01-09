import 'package:gym_app/core/app_export.dart';import 'package:gym_app/presentation/sets_and_reps_screen/models/sets_and_reps_model.dart';/// A controller class for the SetsAndRepsScreen.
///
/// This class manages the state of the SetsAndRepsScreen, including the
/// current setsAndRepsModelObj
class SetsAndRepsController extends GetxController {Rx<SetsAndRepsModel> setsAndRepsModelObj = SetsAndRepsModel().obs;

 }
