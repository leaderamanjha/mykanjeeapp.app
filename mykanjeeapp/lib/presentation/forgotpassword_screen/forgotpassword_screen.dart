import 'package:flutter/material.dart';
import 'package:mykanjeeapp/core/app_export.dart';
import 'package:mykanjeeapp/widgets/custom_elevated_button.dart';
import 'package:mykanjeeapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotpasswordScreen extends StatelessWidget {
  ForgotpasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

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
                      Text("Forget your Password",
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 39.v),
                      Text("Enter your registered email to reset the password.",
                          style: CustomTextStyles.bodyLargeBlack900),
                      SizedBox(height: 39.v),
                      _buildInputWithLabel(context),
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
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildResetPassword(context)));
  }

  /// Section Widget
  Widget _buildInputWithLabel(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Email", style: theme.textTheme.bodySmall),
      SizedBox(height: 6.v),
      CustomTextFormField(
          controller: emailController,
          hintText: "siddarthaj23@gmail.com",
          hintStyle: CustomTextStyles.bodyLargePrimaryContainer,
          textInputAction: TextInputAction.done,
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
  Widget _buildResetPassword(BuildContext context) {
    return CustomElevatedButton(
        text: "Reset Password",
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 74.v),
        onPressed: () {
          onTapResetPassword(context);
        });
  }

  /// Navigates to the signUpOneScreen when the action is triggered.
  onTapTxtSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpOneScreen);
  }

  /// Navigates to the forgetpasswordotpScreen when the action is triggered.
  onTapResetPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgetpasswordotpScreen);
  }
}
