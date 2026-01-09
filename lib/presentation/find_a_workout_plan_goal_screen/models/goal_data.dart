import 'find_a_workout_plan_choose_goal_model.dart';

class GoalData{
  static List<FindAWorkoutPlanChooseGoalModel> getChooseGoal(){
    return [
      FindAWorkoutPlanChooseGoalModel("Any",1),
      FindAWorkoutPlanChooseGoalModel("Muscle building",2),
      FindAWorkoutPlanChooseGoalModel("Fat loss",3),
      FindAWorkoutPlanChooseGoalModel("Mass gain",4),
      FindAWorkoutPlanChooseGoalModel("Gain strength",5),
      FindAWorkoutPlanChooseGoalModel("Powarlifting",6),
    ];
  }
}