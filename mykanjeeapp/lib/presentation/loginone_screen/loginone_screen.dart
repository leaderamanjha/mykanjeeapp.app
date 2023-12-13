import 'package:flutter/material.dart';
import 'package:mykanjeeapp/core/app_export.dart';
import 'package:mykanjeeapp/widgets/custom_elevated_button.dart';
import 'package:mykanjeeapp/widgets/custom_outlined_button.dart';
import 'package:mykanjeeapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginoneScreen extends StatelessWidget {
  LoginoneScreen({Key? key}) : super(key: key);

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 40.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo,
                          height: 80.adaptSize,
                          width: 80.adaptSize),
                      SizedBox(height: 42.v),
                      Text("Log In", style: theme.textTheme.titleLarge),
                      SizedBox(height: 39.v),
                      _buildInputWithLabelPhoneNumber(context),
                      SizedBox(height: 12.v),
                      _buildInputWithLabelPassword(context),
                      SizedBox(height: 14.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtSignInWithOTP(context);
                              },
                              child: Text("Sign In with OTP",
                                  style: theme.textTheme.bodyMedium))),
                      SizedBox(height: 39.v),
                      _buildSubmit(context),
                      SizedBox(height: 41.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtForgotYourPassword(context);
                          },
                          child: Text("Forgot your password?",
                              style: CustomTextStyles.bodyLargeBlack900)),
                      SizedBox(height: 41.v),
                      _buildFrame(context),
                      SizedBox(height: 23.v),
                      _buildSocialButtons(context),
                      SizedBox(height: 24.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                                        style: CustomTextStyles
                                            .titleMediumBlue300
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline))))
                          ]),
                      SizedBox(height: 9.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildInputWithLabelPhoneNumber(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Phone number/E-Mail ID", style: theme.textTheme.bodySmall),
      SizedBox(height: 5.v),
      CustomTextFormField(
          controller: phoneNumberController,
          hintText: "siddarthaj23@gmail.com",
          textInputType: TextInputType.emailAddress,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(14.h, 10.v, 8.h, 10.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgMail,
                  height: 20.adaptSize,
                  width: 20.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 41.v),
          contentPadding: EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v))
    ]);
  }

  /// Section Widget
  Widget _buildInputWithLabelPassword(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Password", style: theme.textTheme.bodySmall),
      SizedBox(height: 6.v),
      CustomTextFormField(
          controller: passwordController,
          hintText: "Opksdgb245W",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
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
          suffixConstraints: BoxConstraints(maxHeight: 41.v),
          obscureText: true)
    ]);
  }

  /// Section Widget
  Widget _buildSubmit(BuildContext context) {
    return CustomElevatedButton(
        text: "Submit",
        buttonStyle: CustomButtonStyles.outlinePrimaryTL83,
        onPressed: () {
          onTapSubmit(context);
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

  /// Navigates to the loginotpScreen when the action is triggered.
  onTapTxtSignInWithOTP(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginotpScreen);
  }

  /// Navigates to the logintwoScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logintwoScreen);
  }

  /// Navigates to the forgotpasswordScreen when the action is triggered.
  onTapTxtForgotYourPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotpasswordScreen);
  }

  /// Navigates to the signUpOneScreen when the action is triggered.
  onTapTxtSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpOneScreen);
  }
}
