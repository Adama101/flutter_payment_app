import 'package:flutter/material.dart';
import 'package:mest_payments_app/core/app_export.dart';
import 'package:mest_payments_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:mest_payments_app/widgets/app_bar/custom_app_bar.dart';
import 'package:mest_payments_app/widgets/custom_elevated_button.dart';
import 'package:mest_payments_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 41.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Sign Up",
                          style: theme.textTheme.headlineLarge)),
                  SizedBox(height: 25.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Full Name",
                          style: CustomTextStyles.bodyMediumGray500)),
                  SizedBox(height: 13.v),
                  _buildFullName(context),
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Phone Number",
                          style: CustomTextStyles.bodyMediumGray500)),
                  SizedBox(height: 13.v),
                  _buildPhoneNumber(context),
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Email Address",
                          style: CustomTextStyles.bodyMediumGray500)),
                  SizedBox(height: 13.v),
                  _buildEmail(context),
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Password",
                          style: CustomTextStyles.bodyMediumGray500)),
                  SizedBox(height: 13.v),
                  _buildPassword(context),
                  SizedBox(height: 38.v),
                  _buildSignUp(context),
                  SizedBox(height: 27.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Already have an account. ",
                            style: CustomTextStyles.bodyMediumffa2a2a7),
                        TextSpan(
                            text: "Sign Up",
                            style: CustomTextStyles.titleSmallff0066ff)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(20.h, 7.v, 313.h, 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return CustomTextFormField(
        controller: fullNameController,
        hintText: "Tanya Myroniuk",
        prefix: Container(
            margin: EdgeInsets.only(right: 15.h, bottom: 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 22.adaptSize,
                width: 22.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 33.v));
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomTextFormField(
        controller: phoneNumberController,
        hintText: "+8801712663389",
        prefix: Container(
            margin: EdgeInsets.only(top: 1.v, right: 16.h, bottom: 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgCall,
                height: 22.adaptSize,
                width: 22.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 34.v),
        contentPadding: EdgeInsets.only(right: 30.h));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Tanya Myroniuk@gmail.com",
        prefix: Container(
            margin: EdgeInsets.only(right: 16.h, bottom: 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEmailsEmailmailletter,
                height: 22.adaptSize,
                width: 22.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 33.v));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        textInputAction: TextInputAction.done,
        prefix: Container(
            margin: EdgeInsets.only(right: 30.h, bottom: 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgInterfaceEssentialLockPassword,
                height: 22.adaptSize,
                width: 22.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 33.v),
        suffix: Container(
            margin: EdgeInsets.only(left: 30.h, bottom: 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEye,
                height: 22.adaptSize,
                width: 22.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 33.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(text: "Sign Up");
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
