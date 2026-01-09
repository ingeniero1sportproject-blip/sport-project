/// This class defines the variables used in the [recommended_workout_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RecommendedWorkoutOneModel {
  String? image;
  String? title;
  String? status;
  String? time;
  String? kcl;
  bool? isPro;

  RecommendedWorkoutOneModel(this.image, this.title, this.status, this.time,this.kcl,this.isPro);
}
