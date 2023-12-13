import 'package:flutter/material.dart';
import 'package:mykanjeeapp/core/app_export.dart';
import 'package:mykanjeeapp/widgets/custom_elevated_button.dart';
import 'package:mykanjeeapp/widgets/custom_pin_code_text_field.dart';

class ForgetpasswordotpScreen extends StatelessWidget {
  const ForgetpasswordotpScreen({Key? key}) : super(key: key);

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
                  SizedBox(height: 40.v),
                  Text("OTP Verification", style: theme.textTheme.titleLarge),
                  SizedBox(height: 40.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Verification code",
                          style: CustomTextStyles.bodyMediumBluegray80001)),
                  SizedBox(height: 7.v),
                  CustomPinCodeTextField(
                      context: context, onChanged: (value) {}),
                  SizedBox(height: 42.v),
                  Text("Didn’t receive? Send again",
                      style: theme.textTheme.bodyMedium),
                  SizedBox(height: 39.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgEnterOtpCuate,
                      height: 240.v,
                      width: 226.h),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildContinueButton(context)));
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Continue",
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 74.v),
        onPressed: () {
          onTapContinueButton(context);
        });
  }

  /// Navigates to the resetpasswordScreen when the action is triggered.
  onTapContinueButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resetpasswordScreen);
  }
}
