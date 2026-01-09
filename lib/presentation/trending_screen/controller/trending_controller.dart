import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/trending_screen/models/trending_model.dart';

import '../models/trending_item_model.dart';

/// A controller class for the TrendingScreen.
///
/// This class manages the state of the TrendingScreen, including the
/// current trendingModelObj
class TrendingController extends GetxController {
 List<TrendingItemModel> trendingData = TrendingModel.getTrendingData();
}
