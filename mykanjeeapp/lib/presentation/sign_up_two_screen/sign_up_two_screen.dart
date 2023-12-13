import 'package:flutter/material.dart';
import 'package:mykanjeeapp/core/app_export.dart';
import 'package:mykanjeeapp/widgets/custom_elevated_button.dart';
import 'package:mykanjeeapp/widgets/custom_icon_button.dart';
import 'package:mykanjeeapp/widgets/custom_outlined_button.dart';
import 'package:mykanjeeapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpTwoScreen extends StatelessWidget {
  SignUpTwoScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

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
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgLogo,
                              height: 80.adaptSize,
                              width: 80.adaptSize),
                          SizedBox(height: 42.v),
                          Text("Sign up", style: theme.textTheme.titleLarge),
                          SizedBox(height: 38.v),
                          _buildPasswordInput(context),
                          SizedBox(height: 12.v),
                          _buildConfirmPasswordInput(context),
                          SizedBox(height: 23.v),
                          _buildCheckboxRow(context),
                          SizedBox(height: 22.v),
                          _buildContinueButton(context),
                          SizedBox(height: 41.v),
                          _buildDividerRow(context),
                          SizedBox(height: 39.v),
                          _buildSocialButtons(context)
                        ]))),
            bottomNavigationBar: _buildLoginRow(context)));
  }

  /// Section Widget
  Widget _buildPasswordInput(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Password", style: theme.textTheme.bodySmall),
      SizedBox(height: 6.v),
      CustomTextFormField(
          controller: passwordController,
          hintText: "Opksdgb245W",
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
  Widget _buildConfirmPasswordInput(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Confirm Password", style: theme.textTheme.bodySmall),
      SizedBox(height: 6.v),
      CustomTextFormField(
          controller: confirmpasswordController,
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
  Widget _buildCheckboxRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 14.h),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 15.v),
                  child: CustomIconButton(
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      padding: EdgeInsets.all(3.h),
                      child:
                          CustomImageView(imagePath: ImageConstant.imgCheck))),
              Expanded(
                  child: Container(
                      width: 337.h,
                      margin: EdgeInsets.only(left: 16.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "By selecting ",
                                style: CustomTextStyles.bodySmallBlack900),
                            TextSpan(
                                text: "Agree and continue, ",
                                style: theme.textTheme.labelLarge),
                            TextSpan(
                                text: "I Agree to My Kanjee ",
                                style: CustomTextStyles.bodySmallBlack900),
                            TextSpan(
                                text: "Terms of service",
                                style: CustomTextStyles.bodySmallBlack900
                                    .copyWith(
                                        decoration: TextDecoration.underline)),
                            TextSpan(
                                text: " and ",
                                style: CustomTextStyles.bodySmallBlack900),
                            TextSpan(
                                text: "payments Terms of service",
                                style: CustomTextStyles.bodySmallBlack900
                                    .copyWith(
                                        decoration: TextDecoration.underline)),
                            TextSpan(
                                text: ", and acknowledge the ",
                                style: CustomTextStyles.bodySmallBlack900),
                            TextSpan(
                                text: "privacy policy",
                                style: CustomTextStyles.bodySmallBlack900
                                    .copyWith(
                                        decoration: TextDecoration.underline))
                          ]),
                          textAlign: TextAlign.left)))
            ])));
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Continue",
        onPressed: () {
          onTapContinueButton(context);
        });
  }

  /// Section Widget
  Widget _buildDividerRow(BuildContext context) {
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
  Widget _buildGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign Up with Google",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSocialIcon,
                height: 24.adaptSize,
                width: 24.adaptSize)));
  }

  /// Section Widget
  Widget _buildFacebookButton(BuildContext context) {
    return CustomElevatedButton(
        height: 44.v,
        text: "Sign Up with Facebook",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSocialIconOnerrorcontainer,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL81);
  }

  /// Section Widget
  Widget _buildAppleButton(BuildContext context) {
    return CustomElevatedButton(
        height: 44.v,
        text: "Sign Up with Apple",
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
      _buildGoogleButton(context),
      SizedBox(height: 12.v),
      _buildFacebookButton(context),
      SizedBox(height: 12.v),
      _buildAppleButton(context)
    ]);
  }

  /// Section Widget
  Widget _buildLoginRow(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapLoginRow(context);
        },
        child: Padding(
            padding: EdgeInsets.only(left: 95.h, right: 100.h, bottom: 51.v),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Already have an account?",
                  style: CustomTextStyles.bodyLargeBlack900),
              Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text("LogIn",
                      style: CustomTextStyles.titleMediumBlue300
                          .copyWith(decoration: TextDecoration.underline)))
            ])));
  }

  /// Navigates to the signupotpScreen when the action is triggered.
  onTapContinueButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupotpScreen);
  }

  /// Navigates to the loginoneScreen when the action is triggered.
  onTapLoginRow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginoneScreen);
  }
}
