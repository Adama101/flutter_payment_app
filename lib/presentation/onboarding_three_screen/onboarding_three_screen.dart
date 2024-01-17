import 'package:flutter/material.dart';
import 'package:mest_payments_app/core/app_export.dart';
import 'package:mest_payments_app/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingThreeScreen extends StatelessWidget {
  const OnboardingThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 49.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 38.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup4,
                height: 311.v,
                width: 335.h,
              ),
              SizedBox(height: 35.v),
              SizedBox(
                height: 6.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 7,
                    activeDotColor: theme.colorScheme.primary,
                    dotColor: appTheme.blueGray8006c,
                    dotHeight: 6.v,
                    dotWidth: 6.h,
                  ),
                ),
              ),
              SizedBox(height: 36.v),
              Container(
                width: 310.h,
                margin: EdgeInsets.symmetric(horizontal: 12.h),
                child: Text(
                  "Paying for Everything is Easy and Convenient",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              SizedBox(height: 7.v),
              Container(
                width: 277.h,
                margin: EdgeInsets.only(
                  left: 28.h,
                  right: 30.h,
                ),
                child: Text(
                  "Built-in Fingerprint, face recognition and more, keeping you completely safe",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumBluegray400.copyWith(
                    height: 1.71,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildNextButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Next",
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 60.v,
      ),
    );
  }
}
