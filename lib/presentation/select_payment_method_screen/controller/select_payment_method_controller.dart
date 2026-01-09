import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/select_payment_method_screen/models/select_payment_method_model.dart';

import '../models/payment_method_data.dart';

/// A controller class for the SelectPaymentMethodScreen.
///
/// This class manages the state of the SelectPaymentMethodScreen, including the
/// current selectPaymentMethodModelObj
class SelectPaymentMethodController extends GetxController {
 int currentPayment = 1;
  List<SelectPaymentMethodModel> paymentMethod =
      PaymentMethosData.getPaymentMethodData();
}
