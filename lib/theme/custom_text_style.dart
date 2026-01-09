import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeGreenA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.greenA700,
      );
  static get bodyLargeOnError => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyLargeOnErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeUniformProExtraCondensed =>
      theme.textTheme.bodyLarge!.uniformProExtraCondensed.copyWith(
        fontSize: getFontSize(
          18,
        ),
      );
  static get bodyLargeUniformProExtraCondensedOnErrorContainer =>
      theme.textTheme.bodyLarge!.uniformProExtraCondensed.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: getFontSize(
          18,
        ),
      );
  static get bodyLargeUniformProExtraCondensedButtonColor =>
      theme.textTheme.bodyLarge!.uniformProExtraCondensed.copyWith(
        color:appTheme.buttonColor,
        fontSize: getFontSize(
          18,
        ),
      );
  static get bodyLargeUniformProExtraCondensedPrimary =>
      theme.textTheme.bodyLarge!.uniformProExtraCondensed.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          18,
        ),
      );
  static get bodyLargeUniformProExtraCondensed_1 =>
      theme.textTheme.bodyLarge!.uniformProExtraCondensed;
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: getFontSize(
          15,
        ),
      );
  static get bodyMediumRed700 => theme.textTheme.bodyMedium!.copyWith(
    fontFamily: "Uniform Pro Extra Condensed",
        color: appTheme.red700,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumSfproDisplay => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.whiteColor,
    fontSize: getFontSize(
      13,
    ),
    fontFamily: "SF Pro Display",
    fontWeight: FontWeight.w400
  );
  static get bodyMediumSfproDisplay22 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.whiteColor,
    fontSize: getFontSize(
      22,
    ),
    fontFamily: "SF Pro Display",
    fontWeight: FontWeight.w700
  );
  static get bodyMediumSfproDisplay22Uniform=> theme.textTheme.bodyMedium!.copyWith(
      color: appTheme.whiteColor,
      fontSize: getFontSize(
        22,
      ),
      fontFamily: "Uniform Pro Extra Condensed",
      fontWeight: FontWeight.w700
  );
  static get bodyMediumSfproDisplay22width400 => theme.textTheme.bodyMedium!.copyWith(
      color: appTheme.whiteColor,
      fontSize: getFontSize(
        22,
      ),
      fontFamily: "SF Pro Display",
      fontWeight: FontWeight.w400
  );
  static get bodyMediumSfproDisplay16 => theme.textTheme.bodyMedium!.copyWith(
      color: appTheme.whiteColor,
      fontSize: getFontSize(
        16,
      ),
      fontFamily: "SF Pro Display",
      fontWeight: FontWeight.w400
  );
  static get bodyMediumSfproDisplay18 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.whiteColor,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: "SF Pro Display",
    fontWeight: FontWeight.w700
  );
  static get bodyMediumSfproDisplay28 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.whiteColor,
    fontSize: getFontSize(
      28,
    ),
    fontFamily: "SF Pro Display",
    fontWeight: FontWeight.w700
  );
  static get bodyMediumSFProDisplay => theme.textTheme.bodyMedium!.sFProDisplay;
  static get bodyMediumSFProDisplayGray600 =>
      theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: appTheme.gray600,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumSFProDisplayPrimary =>
      theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleLarge20 => theme.textTheme.titleLarge!.copyWith(
        fontSize: getFontSize(
          20,
        ),
      );
}

extension on TextStyle {
  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get uniformProExtraCondensed {
    return copyWith(
      fontFamily: 'Uniform Pro Extra Condensed',
    );
  }
}
