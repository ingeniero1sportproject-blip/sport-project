/// This class defines the variables used in the [workout_plan_page],
/// and is typically used to hold data that is passed between different parts of the application.
class WorkoutPlanModel {
  String? image;
  String? title;
  String? level;
  int? timeOfweeks;
  bool? isPro;
  bool? isFav;
  WorkoutPlanModel(this.image,this.title,this.level,this.timeOfweeks,this.isPro,this.isFav);
}
