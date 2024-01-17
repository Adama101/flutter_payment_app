import 'package:flutter/material.dart';
import 'package:mest_payments_app/core/app_export.dart';
import 'package:mest_payments_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:mest_payments_app/widgets/app_bar/appbar_title.dart';
import 'package:mest_payments_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:mest_payments_app/widgets/app_bar/custom_app_bar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 20.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("General",
                              style: CustomTextStyles.bodyMediumGray500))),
                  SizedBox(height: 29.v),
                  _buildLanguageRow(context),
                  SizedBox(height: 10.v),
                  Divider(indent: 20.h, endIndent: 20.h),
                  SizedBox(height: 21.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: _buildContactUsRow(context,
                          contactText: "My Profile")),
                  SizedBox(height: 10.v),
                  Divider(indent: 20.h, endIndent: 20.h),
                  SizedBox(height: 21.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: _buildContactUsRow(context,
                          contactText: "Contact Us")),
                  SizedBox(height: 10.v),
                  Divider(indent: 20.h, endIndent: 20.h),
                  SizedBox(height: 27.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("Security",
                              style: CustomTextStyles.bodyMediumGray500))),
                  SizedBox(height: 28.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: _buildContactUsRow(context,
                          contactText: "Change Password")),
                  SizedBox(height: 10.v),
                  Divider(indent: 20.h, endIndent: 20.h),
                  SizedBox(height: 21.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: _buildContactUsRow(context,
                          contactText: "Privacy Policy")),
                  SizedBox(height: 10.v),
                  Divider(indent: 20.h, endIndent: 20.h),
                  SizedBox(height: 11.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("Choose what data you share with us",
                              style: theme.textTheme.bodySmall))),
                  SizedBox(height: 25.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("Biometric",
                              style: theme.textTheme.titleSmall))),
                  SizedBox(height: 5.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          margin: EdgeInsets.only(left: 355.h),
                          padding: EdgeInsets.all(2.h),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder10),
                          child: Container(
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(8.h)))))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
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
        title: AppbarTitle(text: "Settings"),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgUserGray900,
              margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 7.v))
        ]);
  }

  /// Section Widget
  Widget _buildLanguageRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text("Language", style: theme.textTheme.titleSmall)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child:
                  Text("English", style: CustomTextStyles.bodyMediumGray500)),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 16.h))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: appTheme.gray100),
        child: Container(
            height: 48.v,
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 14.v, bottom: 24.v),
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 48.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(color: appTheme.gray100))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 3.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 2.v),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                          height: 18.adaptSize,
                                          width: 18.adaptSize,
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgPath560,
                                                    height: 1.v,
                                                    width: 6.h,
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    margin: EdgeInsets.only(
                                                        bottom: 3.v)),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgContrast,
                                                    height: 18.adaptSize,
                                                    width: 18.adaptSize,
                                                    alignment: Alignment.center)
                                              ])),
                                      SizedBox(height: 9.v),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgSettingsOnprimarycontainer,
                                          height: 8.v,
                                          width: 29.h)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(left: 55.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                          height: 19.v,
                                          width: 20.h,
                                          child: Stack(
                                              alignment: Alignment.centerRight,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgPath563,
                                                    height: 1.v,
                                                    width: 6.h,
                                                    alignment:
                                                        Alignment.topLeft,
                                                    margin: EdgeInsets.only(
                                                        left: 4.h, top: 4.v)),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgPath564,
                                                    height: 1.adaptSize,
                                                    width: 1.adaptSize,
                                                    alignment:
                                                        Alignment.centerRight,
                                                    margin: EdgeInsets.only(
                                                        right: 3.h)),
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgUser,
                                                    height: 19.v,
                                                    width: 20.h,
                                                    alignment: Alignment.center)
                                              ])),
                                      SizedBox(height: 7.v),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgSettingsOnprimarycontainer10x48,
                                          height: 10.v,
                                          width: 48.h)
                                    ])),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 46.h, bottom: 2.v),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                          height: 18.adaptSize,
                                          width: 18.adaptSize,
                                          child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgPath593,
                                                    height: 15.adaptSize,
                                                    width: 15.adaptSize,
                                                    alignment:
                                                        Alignment.bottomLeft),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgContrastOnprimarycontainer,
                                                    height: 7.adaptSize,
                                                    width: 7.adaptSize,
                                                    alignment:
                                                        Alignment.topRight)
                                              ])),
                                      SizedBox(height: 8.v),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgSettingsOnprimarycontainer8x46,
                                          height: 8.v,
                                          width: 46.h)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(left: 49.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgSearchPrimary,
                                                    height: 5.adaptSize,
                                                    width: 5.adaptSize,
                                                    alignment:
                                                        Alignment.center),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgTelevisionPrimary,
                                                    height: 16.adaptSize,
                                                    width: 16.adaptSize,
                                                    alignment: Alignment.center)
                                              ])),
                                      SizedBox(height: 9.v),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgSettingsPrimary10x41,
                                          height: 10.v,
                                          width: 41.h)
                                    ]))
                          ])))
            ])));
  }

  /// Common widget
  Widget _buildContactUsRow(
    BuildContext context, {
    required String contactText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(contactText,
              style: theme.textTheme.titleSmall!
                  .copyWith(color: appTheme.gray900))),
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
