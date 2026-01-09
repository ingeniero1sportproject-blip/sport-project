import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/detail_gym_page/models/detail_gym_model.dart';

import '../models/detail_gym_data.dart';

/// A controller class for the DetailGymPage.
///
/// This class manages the state of the DetailGymPage, including the
/// current detailGymModelObj
class DetailGymController extends GetxController {
  List<DetailModel> detailGymData = DetailGymData.getDetailGymData();
}
