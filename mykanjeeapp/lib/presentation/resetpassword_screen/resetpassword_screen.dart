import 'package:flutter/material.dart';
import 'package:mykanjeeapp/core/app_export.dart';
import 'package:mykanjeeapp/widgets/custom_elevated_button.dart';
import 'package:mykanjeeapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetpasswordScreen extends StatelessWidget {
  ResetpasswordScreen({Key? key}) : super(key: key);

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
                    child: Column(children: [
                      Container(
                          height: 60.v,
                          width: 66.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 9.h, vertical: 10.v),
                          decoration: AppDecoration.outlineBlueA.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder30),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgCart,
                              height: 40.v,
                              width: 48.h,
                              alignment: Alignment.center)),
                      SizedBox(height: 40.v),
                      Text("Reset Password", style: theme.textTheme.titleLarge),
                      SizedBox(height: 40.v),
                      Container(
                          width: 337.h,
                          margin: EdgeInsets.symmetric(horizontal: 25.h),
                          child: Text(
                              "If there is an account associated with this email address you will receive a Link to reset email.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeBlack900
                                  .copyWith(height: 1.31))),
                      SizedBox(height: 38.v),
                      _buildResetPasswordForm(context),
                      SizedBox(height: 40.v),
                      _buildConfirmPasswordForm(context),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildResetPasswordButton(context)));
  }

  /// Section Widget
  Widget _buildResetPasswordForm(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Password", style: theme.textTheme.bodySmall),
      SizedBox(height: 6.v),
      CustomTextFormField(
          controller: passwordController,
          hintText: "Opksdgb245W",
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
  Widget _buildConfirmPasswordForm(BuildContext context) {
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
  Widget _buildResetPasswordButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Reset Password",
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 74.v),
        onPressed: () {
          onTapResetPasswordButton(context);
        });
  }

  /// Navigates to the loginoneScreen when the action is triggered.
  onTapResetPasswordButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginoneScreen);
  }
}
