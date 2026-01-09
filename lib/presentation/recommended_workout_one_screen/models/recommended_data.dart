import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/recommended_workout_one_screen/models/recommended_workout_one_model.dart';

class RecommendedData{
  static List<RecommendedWorkoutOneModel> getRecommendedData(){
    return [
      RecommendedWorkoutOneModel(ImageConstant.imgRecommendedWorkout1,"bulk","Beginner","8 Weeks","",false),
      RecommendedWorkoutOneModel(ImageConstant.imgRecommendedWorkout2,"50 pullups","Beginner","8 Weeks","",true),
      RecommendedWorkoutOneModel(ImageConstant.imgRecommendedWorkout3,"Strength training","Beginner","8 Weeks","",true),
      RecommendedWorkoutOneModel(ImageConstant.imgRecommendedWorkout4,"Aerobics","Beginner","8 Weeks","",false),
      RecommendedWorkoutOneModel(ImageConstant.imgRecommendedWorkout5,"Pilates","Beginner","8 Weeks","",false),
      RecommendedWorkoutOneModel(ImageConstant.imgRecommendedWorkout6,"Stretching","Beginner","8 Weeks","",true),
    ];
  }
}