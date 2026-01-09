import 'package:gym_app/core/app_export.dart';

import 'detail_gym_model.dart';

class DetailGymData{
  static List<DetailModel> getDetailGymData(){
    return [

    // DetailModel(this.image,this.title,this.time,this.kcl,this.rate,this.level,this.isPro,this.isplay,this.isFav,this.sets,this.reps,this.rest,this.isCheaked);
    DetailModel(ImageConstant.imgDetailGym1,"thletic shirtless male doing biceps workouts","30","450 kcl","4.3","Beginner",true,false,false,3,"8 x 8 x 8",30,false,),
    DetailModel(ImageConstant.imgDetailGym2,"The boxing are you training","30","450 kcl","4.3","Beginner",true,false,false,3,"8 x 8 x 8",30,false,),

    ];
  }
}