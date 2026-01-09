import 'package:gym_app/core/app_export.dart';

import 'workoutanywhere_item_model.dart';

/// This class defines the variables used in the [onboarding_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnboardingOneModel {
  static List<WorkoutanywhereItemModel> getOnboasdingData() {
    return [
      WorkoutanywhereItemModel(ImageConstant.imgOnboarding1, "Workout anywhere",
          "You can do your workout at home without any equipment, outside or at the gym."),
      WorkoutanywhereItemModel(ImageConstant.imgOnboarding2, "Learn techniques",
          "If you are wondering do toppers study at night, then many don't, and many do a good sleep"),
      WorkoutanywhereItemModel(
          ImageConstant.imgOnboarding3,
          "Stay strong healthy",
          "Wellness is also about your mental health the relationships health enough."),
    ];
  }
}
