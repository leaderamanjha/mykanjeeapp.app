import 'package:flutter/material.dart';
import 'package:mykanjeeapp/core/app_export.dart';
import 'package:mykanjeeapp/presentation/sign_up_one_screen/sign_up_one_screen.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  _ContainerScreenState createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  @override
  void initState() {
    super.initState();

    // Add a delay of 2 seconds before navigating to the next screen
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => SignUpOneScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 450.h,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 54.h,
              vertical: 288.v,
            ),
            decoration: AppDecoration.gradientOnPrimaryToGray,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLogo,
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                ),
                SizedBox(height: 67.v),
                Text(
                  "Welcome to MyKanjee",
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 25.v),
                Text(
                  "Join our sustainable fashion community",
                  style: CustomTextStyles.bodyLargeCabinBlack900,
                ),
                SizedBox(height: 12.v),
                Container(
                  width: 270.h,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    right: 17.h,
                  ),
                  child: Text(
                    "Join our thriving community to buy, sell, and upcycle your clothes.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumCabinBlack900.copyWith(
                      height: 1.43,
                    ),
                  ),
                ),
                SizedBox(height: 30.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
