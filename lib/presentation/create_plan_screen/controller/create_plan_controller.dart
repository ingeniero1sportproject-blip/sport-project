import 'package:gym_app/core/app_export.dart';import 'package:gym_app/presentation/create_plan_screen/models/create_plan_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreatePlanScreen.
///
/// This class manages the state of the CreatePlanScreen, including the
/// current createPlanModelObj
class CreatePlanController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController descriptiontwoController = TextEditingController();

TextEditingController durationoneoneController = TextEditingController();

Rx<CreatePlanModel> createPlanModelObj = CreatePlanModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); nameController.dispose(); descriptiontwoController.dispose(); durationoneoneController.dispose(); } 
onSelected(dynamic value) { for (var element in createPlanModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createPlanModelObj.value.dropdownItemList.refresh(); } 
 }
