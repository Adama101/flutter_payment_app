import 'package:flutter/material.dart';
import 'package:mest_payments_app/core/app_export.dart';
import 'package:mest_payments_app/screens/statistics_page/statistics_page.dart';
import 'package:mest_payments_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:mest_payments_app/widgets/app_bar/appbar_title.dart';
import 'package:mest_payments_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:mest_payments_app/widgets/app_bar/custom_app_bar.dart';

class StatisticsTabContainerScreen extends StatefulWidget {
  const StatisticsTabContainerScreen({Key? key}) : super(key: key);

  @override
  StatisticsTabContainerScreenState createState() =>
      StatisticsTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class StatisticsTabContainerScreenState
    extends State<StatisticsTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 18.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    Text("Current Balance", style: theme.textTheme.bodyLarge),
                    SizedBox(height: 4.v),
                    Text("8,545.00",
                        style: CustomTextStyles.headlineMediumMedium),
                    SizedBox(height: 23.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgGraph,
                        height: 204.v,
                        width: 335.h),
                    SizedBox(height: 14.v),
                    _buildTabview(context),
                    _buildStatisticsTabBarView(context)
                  ])))
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
        title: AppbarTitle(text: "Statistics"),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgInterfaceEssentialBell,
              margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 7.v))
        ]);
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 28.v,
        width: 335.h,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.whiteA700,
            labelStyle: TextStyle(
                fontSize: 15.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
            unselectedLabelColor: appTheme.gray500,
            unselectedLabelStyle: TextStyle(
                fontSize: 15.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
            indicator: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(8.h)),
            tabs: [
              Tab(child: Text("Oct")),
              Tab(child: Text("Nov")),
              Tab(child: Text("Dec")),
              Tab(child: Text("Jan")),
              Tab(child: Text("Feb")),
              Tab(child: Text("Mar"))
            ]));
  }

  /// Section Widget
  Widget _buildStatisticsTabBarView(BuildContext context) {
    return SizedBox(
        height: 263.v,
        child: TabBarView(controller: tabviewController, children: [
          StatisticsPage(),
          StatisticsPage(),
          StatisticsPage(),
          StatisticsPage(),
          StatisticsPage(),
          StatisticsPage()
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
                                                    imagePath:
                                                        ImageConstant.imgClock,
                                                    height: 15.adaptSize,
                                                    width: 15.adaptSize,
                                                    alignment:
                                                        Alignment.bottomLeft),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgSettingsPrimary,
                                                    height: 7.adaptSize,
                                                    width: 7.adaptSize,
                                                    alignment:
                                                        Alignment.topRight)
                                              ])),
                                      SizedBox(height: 8.v),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgSettingsPrimary8x46,
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
                                                        .imgSearchOnprimarycontainer,
                                                    height: 5.adaptSize,
                                                    width: 5.adaptSize,
                                                    alignment:
                                                        Alignment.center),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgTelevision,
                                                    height: 16.adaptSize,
                                                    width: 16.adaptSize,
                                                    alignment: Alignment.center)
                                              ])),
                                      SizedBox(height: 9.v),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgSettingsOnprimarycontainer10x41,
                                          height: 10.v,
                                          width: 41.h)
                                    ]))
                          ])))
            ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
