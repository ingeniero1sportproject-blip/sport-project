import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/chest_stretches_page/models/chest_stretches_model.dart';

import '../models/exerciseprofile_item_model.dart';

/// A controller class for the ChestStretchesPage.
///
/// This class manages the state of the ChestStretchesPage, including the
/// current chestStretchesModelObj
class ChestStretchesController extends GetxController {
 List<ExerciseprofileItemModel> cheaststretch =  ChestStretchesModel.getChestStretchItem();

  void setFavourite(ExerciseprofileItemModel exerciseprofileItemModelObj) {
   exerciseprofileItemModelObj.isFavourite = !exerciseprofileItemModelObj.isFavourite!;
   update();

  }
}
