import 'package:gym_app/core/app_export.dart';

import '../../detail_gym_page/models/detail_gym_model.dart';

class Week1Data{
  static List<DetailModel> getWeek1stData(){
    return [
      DetailModel(ImageConstant.imgWeek1st1,"incline press","45","15kcl","4.3","begginer",true,false,false,3,"8 x 8 x 8",30,false,),
      DetailModel(ImageConstant.imgWeek1st2,"one-arm dumbbell rows","30","15kcl","4.3","begginer",true,false,false,3,"8 x 8 x 8",30,false,),
      DetailModel(ImageConstant.imgWeek1st3,"Front seated milatary press","48","15kcl","4.3","begginer",true,false,false,3,"8 x 8 x 8",30,false,),
      DetailModel(ImageConstant.imgWeek1st4,"wide grip pull up","30","15kcl","4.3","begginer",true,false,false,3,"8 x 8 x 8",30,false,),
      DetailModel(ImageConstant.imgWeek1st5,"standing dumbeell curl","30","15kcl","4.3","begginer",true,false,false,3,"8 x 8 x 8",30,false,),
    ];
  }
}

