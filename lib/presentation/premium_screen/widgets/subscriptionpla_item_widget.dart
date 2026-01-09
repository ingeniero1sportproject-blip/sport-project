import '../controller/premium_controller.dart';
import '../models/subscriptionpla_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';

// ignore: must_be_immutable
class SubscriptionplaItemWidget extends StatelessWidget {
  SubscriptionplaItemWidget(
    this.subscriptionplaItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SubscriptionplaItemModel subscriptionplaItemModelObj;

  PremiumController controller = Get.put(PremiumController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PremiumController>(
      init: PremiumController(),
      builder: (controller) => GestureDetector(
        onTap: (){
          controller.currentPremiumId = subscriptionplaItemModelObj.id!;
          controller.update();
        },
        child: Container(
          padding: getPadding(
            left: 16,
            top: 17,
            right: 16,
            bottom: 17,
          ),
          decoration: AppDecoration.fillOnPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
            border: Border.all(color: controller.currentPremiumId == subscriptionplaItemModelObj.id?appTheme.buttonColor:appTheme.dark3Color)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      subscriptionplaItemModelObj.title!.toUpperCase(),
                      style: theme.textTheme.headlineMedium,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                      ),
                      child: Text(
                        subscriptionplaItemModelObj.subTitle!,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 20,
                  bottom: 22,
                ),
                child: Text(
                  subscriptionplaItemModelObj.price!,
                  style: CustomTextStyles.bodyMediumSfproDisplay22,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
