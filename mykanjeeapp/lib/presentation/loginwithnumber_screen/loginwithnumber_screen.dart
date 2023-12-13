import 'package:flutter/material.dart';
import 'package:mykanjeeapp/core/app_export.dart';
import 'package:mykanjeeapp/widgets/custom_elevated_button.dart';
import 'package:mykanjeeapp/widgets/custom_outlined_button.dart';
import 'package:mykanjeeapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginwithnumberScreen extends StatelessWidget {
  LoginwithnumberScreen({Key? key}) : super(key: key);

  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 40.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgLogo,
                      height: 80.adaptSize,
                      width: 80.adaptSize),
                  SizedBox(height: 42.v),
                  Text("Log In", style: theme.textTheme.titleLarge),
                  SizedBox(height: 39.v),
                  _buildInputWithLabel(context),
                  SizedBox(height: 13.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                          onTap: () {
                            onTapTxtEdit(context);
                          },
                          child:
                              Text("edit", style: theme.textTheme.bodyMedium))),
                  SizedBox(height: 40.v),
                  _buildSendOTP(context),
                  SizedBox(height: 41.v),
                  _buildFrame(context),
                  SizedBox(height: 39.v),
                  _buildSocialButtons(context),
                  SizedBox(height: 40.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text("Don’t have an account?",
                            style: CustomTextStyles.bodyLargeBlack900)),
                    GestureDetector(
                        onTap: () {
                          onTapTxtSignUp(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("Sign up",
                                style: CustomTextStyles.titleMediumBlue300
                                    .copyWith(
                                        decoration: TextDecoration.underline))))
                  ]),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildInputWithLabel(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Phone number/E-Mail ID", style: theme.textTheme.bodySmall),
      SizedBox(height: 5.v),
      CustomTextFormField(
          controller: phoneNumberController,
          hintText: "91 98986 98645",
          textInputAction: TextInputAction.done,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(14.h, 10.v, 8.h, 10.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgPassword,
                  height: 20.adaptSize,
                  width: 20.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 41.v),
          suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 12.v, 14.h, 12.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgEyeOpen,
                  height: 16.adaptSize,
                  width: 16.adaptSize)),
          suffixConstraints: BoxConstraints(maxHeight: 41.v))
    ]);
  }

  /// Section Widget
  Widget _buildSendOTP(BuildContext context) {
    return CustomElevatedButton(
        text: "Send OTP",
        onPressed: () {
          onTapSendOTP(context);
        });
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 8.v, bottom: 10.v),
              child: SizedBox(width: 174.h, child: Divider())),
          Text("or", style: CustomTextStyles.bodyLargeGray800),
          Padding(
              padding: EdgeInsets.only(top: 8.v, bottom: 10.v),
              child: SizedBox(width: 174.h, child: Divider()))
        ]);
  }

  /// Section Widget
  Widget _buildSignInWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign in with Google",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSocialIcon,
                height: 24.adaptSize,
                width: 24.adaptSize)));
  }

  /// Section Widget
  Widget _buildSignInWithFacebook(BuildContext context) {
    return CustomElevatedButton(
        height: 44.v,
        text: "Sign in with Facebook",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSocialIconOnerrorcontainer,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL81);
  }

  /// Section Widget
  Widget _buildSignInWithApple(BuildContext context) {
    return CustomElevatedButton(
        height: 44.v,
        text: "Sign in with Apple",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgAppleSocialIcon,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL82);
  }

  /// Section Widget
  Widget _buildSocialButtons(BuildContext context) {
    return Column(children: [
      _buildSignInWithGoogle(context),
      SizedBox(height: 12.v),
      _buildSignInWithFacebook(context),
      SizedBox(height: 12.v),
      _buildSignInWithApple(context)
    ]);
  }

  /// Navigates to the logintwoScreen when the action is triggered.
  onTapTxtEdit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logintwoScreen);
  }

  /// Navigates to the loginotpScreen when the action is triggered.
  onTapSendOTP(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginotpScreen);
  }

  /// Navigates to the signUpOneScreen when the action is triggered.
  onTapTxtSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpOneScreen);
  }
}
