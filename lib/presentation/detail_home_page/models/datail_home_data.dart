import '../../../core/utils/image_constant.dart';
import '../../detail_gym_page/models/detail_gym_model.dart';

class DetailHomeData{
  static List<DetailModel> getDetailHomeData(){
    return [
      DetailModel(ImageConstant.imgDetailHome1,"thletic shirtless male doing biceps workouts","30","500 kcl","4.3","Beginner",true,false,false,3,"8 x 8 x 8",30,false,),
      DetailModel(ImageConstant.imgDetailHome2,"angle view of unrecognizable man preparing","30","500 kcl","4.3","Beginner",false,false,false,3,"8 x 8 x 8",30,false,),
    ];
  }
}