import 'package:gym_app/core/app_export.dart';

import '../../detail_gym_page/models/detail_gym_model.dart';
import '../models/datail_home_data.dart';

/// A controller class for the DetailHomePage.
///
/// This class manages the state of the DetailHomePage, including the
/// current detailHomeModelObj
class DetailHomeController extends GetxController {
 List<DetailModel> detailHomeData =  DetailHomeData.getDetailHomeData();
}
