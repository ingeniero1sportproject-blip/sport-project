import 'package:gym_app/core/app_export.dart';

import 'trending_item_model.dart';


class TrendingModel {
  // Rx<List<TrendingItemModel>> trendingItemList =
  //     Rx(List.generate(3, (index) => TrendingItemModel()));

  static List<TrendingItemModel> getTrendingData(){
   return [
    TrendingItemModel(ImageConstant.imgTrendingWorkout1,"muscular tattooed bearded male exercisin","40 min","450 kcal",true),
    TrendingItemModel(ImageConstant.imgTrendingWorkout2,"angle view of unrecognizable man preparing","30 min","500 kcal",false),
    TrendingItemModel(ImageConstant.imgTrendingWorkout3,"muscular tattooed bearded male exercisin","30 min","450 kcal",true),
    TrendingItemModel(ImageConstant.imgTrendingWorkout4,"muscular tattooed bearded male exercisin","30 min","500 kcal",false),
   ];
  }
}
