import 'package:flutter/material.dart';
import 'package:mest_payments_app/core/app_export.dart';
import 'package:mest_payments_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:mest_payments_app/widgets/app_bar/custom_app_bar.dart';
import 'package:mest_payments_app/widgets/custom_elevated_button.dart';
import 'package:mest_payments_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.h, vertical: 41.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Sign In",
                                      style: theme.textTheme.headlineLarge)),
                              SizedBox(height: 25.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Email Address",
                                      style:
                                          CustomTextStyles.bodyMediumGray500)),
                              SizedBox(height: 13.v),
                              CustomTextFormField(
                                  controller: emailController,
                                  hintText: "NunyaTomey@gmail.com",
                                  textInputType: TextInputType.emailAddress,
                                  prefix: Container(
                                      margin: EdgeInsets.only(
                                          right: 16.h, bottom: 11.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgEmailsEmailmailletter,
                                          height: 22.adaptSize,
                                          width: 22.adaptSize)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 33.v)),
                              SizedBox(height: 15.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Password",
                                      style:
                                          CustomTextStyles.bodyMediumGray500)),
                              SizedBox(height: 13.v),
                              CustomTextFormField(
                                  controller: passwordController,
                                  textInputAction: TextInputAction.done,
                                  prefix: Container(
                                      margin: EdgeInsets.only(
                                          right: 30.h, bottom: 11.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgInterfaceEssentialLockPassword,
                                          height: 22.adaptSize,
                                          width: 22.adaptSize)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 33.v),
                                  suffix: Container(
                                      margin: EdgeInsets.only(
                                          left: 30.h, bottom: 11.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgEye,
                                          height: 22.adaptSize,
                                          width: 22.adaptSize)),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 33.v),
                                  obscureText: true),
                              SizedBox(height: 38.v),
                              CustomElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, "/profile_screen");
                                  },
                                  text: "Sign In",
                                  buttonTextStyle: CustomTextStyles
                                      .titleSmallInterWhiteA700),
                              SizedBox(height: 27.v),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "/sign_up_screen");
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "I’m a new user.",
                                              style: CustomTextStyles
                                                  .bodyMediumffa2a2a7),
                                          TextSpan(text: " "),
                                          TextSpan(
                                            mouseCursor: MaterialStateMouseCursor.clickable,
                                              text: "Sign Up",
                                              style: CustomTextStyles
                                                  .titleSmallff0066ff)
                                        ]),
                                        textAlign: TextAlign.left),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5.v)
                            ])))))));
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

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context, '/splash_screen');
  }
}
