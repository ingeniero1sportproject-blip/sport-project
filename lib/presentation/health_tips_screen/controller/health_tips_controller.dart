import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/health_tips_screen/models/health_tips_model.dart';

import '../models/healthdefinitio_item_model.dart';

/// A controller class for the HealthTipsScreen.
///
/// This class manages the state of the HealthTipsScreen, including the
/// current healthTipsModelObj
class HealthTipsController extends GetxController {
 List<HealthdefinitioItemModel> heithTips = HealthTipsModel.getHealthTipsData();

  void setFavourite(HealthdefinitioItemModel data) {
   data.isFavourite = !data.isFavourite!;
   update();
  }
}
