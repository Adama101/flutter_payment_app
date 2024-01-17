import 'package:flutter/material.dart';
import 'package:mest_payments_app/core/app_export.dart';
import 'package:mest_payments_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  const ViewhierarchyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 42.adaptSize,
          width: 42.adaptSize,
          padding: EdgeInsets.all(12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgVector,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 17.h,
            top: 4.v,
            bottom: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Apple Store",
                style: theme.textTheme.titleMedium,
              ),
              Text(
                "Entertainment",
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 8.v,
            bottom: 9.v,
          ),
          child: Text(
            "- 5,99",
            style: theme.textTheme.titleMedium,
          ),
        ),
      ],
    );
  }
}
