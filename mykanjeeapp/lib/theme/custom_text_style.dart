import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlack900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlue300 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blue300,
      );
  static get bodyLargeCabinBlack900 =>
      theme.textTheme.bodyLarge!.cabin.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeGray800 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray800,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumBluegray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray80001,
        fontSize: 15.fSize,
      );
  static get bodyMediumCabinBlack900 =>
      theme.textTheme.bodyMedium!.cabin.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBlack900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  // Title text style
  static get titleMediumBlue300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue300,
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray80001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray80001,
      );
}

extension on TextStyle {
  TextStyle get cabin {
    return copyWith(
      fontFamily: 'Cabin',
    );
  }

  // ignore: unused_element
  TextStyle get sFPro {
    return copyWith(
      fontFamily: 'SF Pro',
    );
  }
}
