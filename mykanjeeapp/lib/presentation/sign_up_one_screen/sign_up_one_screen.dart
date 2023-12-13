import 'package:flutter/material.dart';
import 'package:mykanjeeapp/core/app_export.dart';
import 'package:mykanjeeapp/widgets/custom_elevated_button.dart';
import 'package:mykanjeeapp/widgets/custom_outlined_button.dart';
import 'package:mykanjeeapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpOneScreen extends StatelessWidget {
  SignUpOneScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

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
                  Text("Sign up", style: theme.textTheme.titleLarge),
                  SizedBox(height: 38.v),
                  _buildInputWithLabelName(context),
                  SizedBox(height: 13.v),
                  _buildInputWithLabelPhoneNumber(context),
                  SizedBox(height: 24.v),
                  _buildContinueButton(context),
                  SizedBox(height: 41.v),
                  _buildFrameRow(context),
                  SizedBox(height: 39.v),
                  _buildSocialButtons(context),
                  SizedBox(height: 41.v),
                  GestureDetector(
                      onTap: () {
                        onTapFrameFourteen(context);
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account?",
                                style: CustomTextStyles.bodyLargeBlack900),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Text("LogIn",
                                    style: CustomTextStyles.titleMediumBlue300
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline)))
                          ])),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildInputWithLabelName(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Name", style: theme.textTheme.bodySmall),
      SizedBox(height: 6.v),
      CustomTextFormField(
          controller: nameController,
          hintText: "Siddartha",
          prefix: Container(
              margin: EdgeInsets.fromLTRB(14.h, 10.v, 8.h, 10.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgMail,
                  height: 20.adaptSize,
                  width: 20.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 41.v),
          contentPadding: EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGray)
    ]);
  }

  /// Section Widget
  Widget _buildInputWithLabelPhoneNumber(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Phone number/E-Mail ID", style: theme.textTheme.bodySmall),
      SizedBox(height: 5.v),
      CustomTextFormField(
          controller: phoneNumberController,
          hintText: "91 98945 65589",
          textInputAction: TextInputAction.done,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(14.h, 10.v, 8.h, 10.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgMail,
                  height: 20.adaptSize,
                  width: 20.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 41.v),
          contentPadding: EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGray)
    ]);
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Continue",
        buttonStyle: CustomButtonStyles.outlinePrimary,
        onPressed: () {
          onTapContinueButton(context);
        });
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
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
  Widget _buildSocialButtonSignUpWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign Up with Google",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSocialIcon,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlueGray);
  }

  /// Section Widget
  Widget _buildSocialButtonSignUpWithFacebook(BuildContext context) {
    return CustomElevatedButton(
        height: 44.v,
        text: "Sign Up with Facebook",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSocialIconOnerrorcontainer,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL12);
  }

  /// Section Widget
  Widget _buildSocialButtonSignUpWithApple(BuildContext context) {
    return CustomElevatedButton(
        height: 44.v,
        text: "Sign Up with Apple",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgAppleSocialIcon,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL121);
  }

  /// Section Widget
  Widget _buildSocialButtons(BuildContext context) {
    return Column(children: [
      _buildSocialButtonSignUpWithGoogle(context),
      SizedBox(height: 12.v),
      _buildSocialButtonSignUpWithFacebook(context),
      SizedBox(height: 12.v),
      _buildSocialButtonSignUpWithApple(context)
    ]);
  }

  /// Navigates to the signUpTwoScreen when the action is triggered.
  onTapContinueButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpTwoScreen);
  }

  /// Navigates to the loginoneScreen when the action is triggered.
  onTapFrameFourteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginoneScreen);
  }
}
