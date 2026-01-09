import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/confirm_payment_screen/models/confirm_payment_model.dart';

/// A controller class for the ConfirmPaymentScreen.
///
/// This class manages the state of the ConfirmPaymentScreen, including the
/// current confirmPaymentModelObj
class ConfirmPaymentController extends GetxController {
  Rx<ConfirmPaymentModel> confirmPaymentModelObj = ConfirmPaymentModel().obs;
}
