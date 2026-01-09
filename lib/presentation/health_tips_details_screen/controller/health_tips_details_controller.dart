import 'package:gym_app/core/app_export.dart';

import '../../health_tips_screen/models/healthdefinitio_item_model.dart';

/// A controller class for the HealthTipsDetailsScreen.
///
/// This class manages the state of the HealthTipsDetailsScreen, including the
/// current healthTipsDetailsModelObj
class HealthTipsDetailsController extends GetxController {
  HealthdefinitioItemModel? currentTips;

  void setcurrentTips(HealthdefinitioItemModel tips) {
    currentTips = tips;
    update();
  }
}
