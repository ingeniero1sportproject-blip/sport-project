import 'package:gym_app/core/app_export.dart';import 'package:gym_app/presentation/add_new_card_screen/models/add_new_card_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddNewCardScreen.
///
/// This class manages the state of the AddNewCardScreen, including the
/// current addNewCardModelObj
class AddNewCardController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController cardNumberController = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController cvvController = TextEditingController();

Rx<AddNewCardModel> addNewCardModelObj = AddNewCardModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); nameController.dispose(); cardNumberController.dispose(); dateController.dispose(); cvvController.dispose(); } 
onSelected(dynamic value) { for (var element in addNewCardModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addNewCardModelObj.value.dropdownItemList.refresh(); } 
 }
