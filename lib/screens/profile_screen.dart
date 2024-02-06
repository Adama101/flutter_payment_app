import 'package:flutter/material.dart';
import 'package:mest_payments_app/core/app_export.dart';
import 'package:mest_payments_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:mest_payments_app/widgets/app_bar/appbar_title.dart';
import 'package:mest_payments_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:mest_payments_app/widgets/app_bar/custom_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 25.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Container(
                            height: 70.adaptSize,
                            width: 70.adaptSize,
                            decoration: AppDecoration.fillOnPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder35),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgRectangle5,
                                height: 70.adaptSize,
                                width: 70.adaptSize,
                                radius: BorderRadius.circular(35.h),
                                alignment: Alignment.center)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 22.h, top: 10.v, bottom: 10.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Nunya Tonney",
                                      style: CustomTextStyles.titleMedium17),
                                  SizedBox(height: 4.v),
                                  Text("Senior Designer",
                                      style:
                                          CustomTextStyles.bodySmallBluegray400)
                                ]))
                      ]),
                      SizedBox(height: 32.v),
                      _buildPaymentsFinan(context,
                          image: ImageConstant.imgLock,
                          text: "Personal Information"),
                      SizedBox(height: 10.v),
                      Divider(),
                      SizedBox(height: 21.v),
                      _buildPaymentsFinan(context,
                          image: ImageConstant.imgPaymentsFinan,
                          text: "Payment Preferences"),
                      SizedBox(height: 10.v),
                      Divider(),
                      SizedBox(height: 21.v),
                      _buildPaymentsFinan(context,
                          image: ImageConstant.imgPaymentsFinanceCredit,
                          text: "Banks and Cards"),
                      SizedBox(height: 10.v),
                      Divider(),
                      SizedBox(height: 20.v),
                      _buildNotifications(context),
                      SizedBox(height: 10.v),
                      Divider(),
                      SizedBox(height: 21.v),
                      _buildPaymentsFinan(context,
                          image: ImageConstant.imgInterfaceEssentialChat,
                          text: "Message Center"),
                      SizedBox(height: 10.v),
                      Divider(),
                      SizedBox(height: 21.v),
                      _buildPaymentsFinan(context,
                          image: ImageConstant.imgLinkedin, text: "Address"),
                      SizedBox(height: 10.v),
                      Divider(),
                      SizedBox(height: 21.v),
                      _buildPaymentsFinan(context,
                          image: ImageConstant.imgSearch, text: "Settings"),
                      SizedBox(height: 10.v),
                      Divider(),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 62.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 7.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Profile"),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgUserSingleUserEditPen,
              margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 7.v))
        ]);
  }

  /// Section Widget
  Widget _buildNotifications(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 4.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgInterfaceEssentialBellGray500,
              height: 22.adaptSize,
              width: 22.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text("Notifications", style: theme.textTheme.bodyMedium)),
          Spacer(),
          Container(
              width: 18.adaptSize,
              margin: EdgeInsets.only(top: 2.v),
              padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 1.v),
              decoration: AppDecoration.fillRedA
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
              child: Text("2", style: CustomTextStyles.bodySmallWhiteA700))
        ]));
  }

  /// Common widget
  Widget _buildPaymentsFinan(
    BuildContext context, {
    required String image,
    required String text,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: image, height: 22.adaptSize, width: 22.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(text,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.gray900))),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize)
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
