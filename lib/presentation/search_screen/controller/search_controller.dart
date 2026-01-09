import 'package:gym_app/core/app_export.dart';import 'package:gym_app/presentation/search_screen/models/search_model.dart';/// A controller class for the SearchScreen.
///
/// This class manages the state of the SearchScreen, including the
/// current searchModelObj
class SearchController extends GetxController {Rx<SearchModel> searchModelObj = SearchModel().obs;

 }
