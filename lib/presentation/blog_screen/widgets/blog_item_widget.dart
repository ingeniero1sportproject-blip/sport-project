import '../controller/blog_controller.dart';
import '../models/blog_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';

// ignore: must_be_immutable
class BlogItemWidget extends StatelessWidget {
  BlogItemWidget(
    this.blogItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BlogItemModel blogItemModelObj;

  var controller = Get.find<BlogController>();

  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: [
          CustomImageView(
            imagePath: blogItemModelObj.image,
            height: getSize(101),
            width: getSize(101),
            radius: BorderRadius.circular(
              getHorizontalSize(16),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 6,
              bottom: 6,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: getSize(250),
                  child: Text(
                    blogItemModelObj.title!.toUpperCase(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLargeUniformProExtraCondensed,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 5,
                  ),
                  child: SizedBox(

                    width: getSize(245),
                    child: Text(
                      blogItemModelObj.subTitle!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                      CustomTextStyles.bodyMediumSFProDisplayGray600.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 5,
                  ),
                  child: Text(
                    blogItemModelObj.date!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      );

  }
}
