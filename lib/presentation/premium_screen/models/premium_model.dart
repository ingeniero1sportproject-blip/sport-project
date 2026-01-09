
import 'subscriptionpla_item_model.dart';

/// This class defines the variables used in the [premium_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PremiumModel {

  static List<SubscriptionplaItemModel> getPremiumItem(){
    return [
      SubscriptionplaItemModel("3 month","Renews after every 3 months","\$30.00",1),
      SubscriptionplaItemModel("6 month","Renews after every 6 months","\$100.00",2),
      SubscriptionplaItemModel("12 month","Renews after every 12 months","\$150.00",3),
      SubscriptionplaItemModel("lifetime","One time payment only","\$200.00",4),
    ];
  }
}
