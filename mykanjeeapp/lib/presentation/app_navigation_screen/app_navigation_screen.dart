import 'package:flutter/material.dart';
import 'package:mykanjeeapp/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.containerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SignUpOtp",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signupotpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "LoginOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "LoginTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.logintwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "LoginWithNumber",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginwithnumberScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "LoginOtp",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginotpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ForgotPassword",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotpasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ForgetPasswordOtp",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgetpasswordotpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ResetPassword",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.resetpasswordScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
