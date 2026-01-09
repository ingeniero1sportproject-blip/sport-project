import 'package:gym_app/select_muscle_tabs/model/select_muscle_tabs_data_model.dart';

import '../../core/utils/image_constant.dart';

class SelectMuscleTabData{
  static List<SelectMuscleTabsDataModel> getGymExercirseData(){
    return [
      SelectMuscleTabsDataModel(ImageConstant.imgRecommendedWorkout1,"bulk","Beginner","8 Weeks",false,false),
      SelectMuscleTabsDataModel(ImageConstant.imgRecommendedWorkout2,"50 pullups","Beginner","8 Weeks",true,false),
      SelectMuscleTabsDataModel(ImageConstant.imgRecommendedWorkout3,"Strength training","Beginner","8 Weeks",true,false),
      SelectMuscleTabsDataModel(ImageConstant.imgRecommendedWorkout4,"Aerobics","Beginner","8 Weeks",false,false),
      SelectMuscleTabsDataModel(ImageConstant.imgRecommendedWorkout5,"Pilates","Beginner","8 Weeks",false,false),
      SelectMuscleTabsDataModel(ImageConstant.imgRecommendedWorkout6,"Stretching","Beginner","8 Weeks",true,false),
    ];
  }
  static List<SelectMuscleTabsDataModel> getHomeExercirseData(){
    return [
      SelectMuscleTabsDataModel(ImageConstant.imgRecommendedWorkout6,"Stretching","Beginner","8 Weeks",true,false),
      SelectMuscleTabsDataModel(ImageConstant.imgRecommendedWorkout5,"Pilates","Beginner","8 Weeks",false,false),
      SelectMuscleTabsDataModel(ImageConstant.imgRecommendedWorkout4,"Aerobics","Beginner","8 Weeks",false,false),
      SelectMuscleTabsDataModel(ImageConstant.imgRecommendedWorkout3,"Strength training","Beginner","8 Weeks",true,false),
      SelectMuscleTabsDataModel(ImageConstant.imgRecommendedWorkout2,"50 pullups","Beginner","8 Weeks",true,false),
      SelectMuscleTabsDataModel(ImageConstant.imgRecommendedWorkout1,"bulk","Beginner","8 Weeks",false,false),
    ];
  }
  static List<SelectMuscleTabsDataModel> getStretchesExercirseData(){
    return [
      SelectMuscleTabsDataModel(ImageConstant.imgRecommendedWorkout3,"Strength training","Beginner","8 Weeks",true,false),
      SelectMuscleTabsDataModel(ImageConstant.imgRecommendedWorkout1,"bulk","Beginner","8 Weeks",false,false),
      SelectMuscleTabsDataModel(ImageConstant.imgRecommendedWorkout6,"Stretching","Beginner","8 Weeks",true,false),
      SelectMuscleTabsDataModel(ImageConstant.imgRecommendedWorkout4,"Aerobics","Beginner","8 Weeks",false,false),
      SelectMuscleTabsDataModel(ImageConstant.imgRecommendedWorkout5,"Pilates","Beginner","8 Weeks",false,false),
      SelectMuscleTabsDataModel(ImageConstant.imgRecommendedWorkout2,"50 pullups","Beginner","8 Weeks",true,false),
    ];
  }
}