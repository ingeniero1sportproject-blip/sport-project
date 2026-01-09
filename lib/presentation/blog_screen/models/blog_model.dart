import 'package:gym_app/core/app_export.dart';

import 'blog_item_model.dart';

/// This class defines the variables used in the [blog_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BlogModel {


  static List<BlogItemModel> getBlogData(){
   return [
    BlogItemModel(ImageConstant.imgBlog1,"Is boxing is allowed in Islam?","they can damage healthdisable someone government.","21 November"),
    BlogItemModel(ImageConstant.imgBlog2,"Strength Building muscle matters","They can damage health disable government.","25 November"),
    BlogItemModel(ImageConstant.imgBlog3,"Balance and Stability Training","they can damage healthdisable someone government.","21 January"),
    BlogItemModel(ImageConstant.imgBlog4,"Coordination and Agility Training","they can damage healthdisable someone government.","22 September"),
    BlogItemModel(ImageConstant.imgBlog5,"Flexibility and Mobility Training","they can damage healthdisable someone government.","5 Febuary"),
    BlogItemModel(ImageConstant.imgBlog6,"the boxing in allowed in Islam?","they can damage healthdisable someone government.","21 November"),
   ];
  }
}
