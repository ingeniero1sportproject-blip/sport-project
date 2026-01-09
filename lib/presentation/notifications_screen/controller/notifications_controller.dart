import 'package:gym_app/core/app_export.dart';
import 'package:gym_app/presentation/notifications_screen/models/notifications_model.dart';

import '../models/notification_data.dart';

/// A controller class for the NotificationsScreen.
///
/// This class manages the state of the NotificationsScreen, including the
/// current notificationsModelObj
class NotificationsController extends GetxController {
 List<NotificationsModel> notification = NotificationData.getNotiFicationData();
}
