import 'package:gym_app/core/app_export.dart';

import 'healthtips1_item_model.dart';

/// This class defines the variables used in the [categories_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoriesModel {


  static List<Healthtips1ItemModel> getCAtegoriesData(){
   return [
    Healthtips1ItemModel(ImageConstant.imghealthTips,"Health tips"),
    Healthtips1ItemModel(ImageConstant.imgExercise,"exercise"),
    Healthtips1ItemModel(ImageConstant.imggymExercise,"GYm exercise"),
    Healthtips1ItemModel(ImageConstant.imgchalllenges,"Challenges"),
    Healthtips1ItemModel(ImageConstant.imgstretch,"stretches"),
    Healthtips1ItemModel(ImageConstant.imghomeExercise,"home exercise"),
    Healthtips1ItemModel(ImageConstant.imgworkout,"Workout plan"),
   ];
  }
}
