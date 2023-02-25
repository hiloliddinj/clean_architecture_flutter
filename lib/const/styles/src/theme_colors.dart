part of '../theme.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color cursorColor;
  final Color pinputCursorColor;
  final Color backgroundAvatarColor;
  final Color iconColor;
  final Color buttonColor;
  final Color buttonNegativeColor;
  final Color buttonDisableColor;
  final Color borderTextFieldColor;
  final Color errorBorderTextFieldColor;
  final Color focusedBackgroundTextFieldColor;
  final Color unfocusedBackgroundTextFieldColor;
  final Color appBarColor;
  final Color overlayAlert;
  final Color backgroundContainer;
  final Color circularIndicatorColor;
  final Color backgroundCircularIndicator;

  const ThemeColors({
    required this.cursorColor,
    required this.pinputCursorColor,
    required this.backgroundAvatarColor,
    required this.iconColor,
    required this.buttonColor,
    required this.buttonNegativeColor,
    required this.buttonDisableColor,
    required this.borderTextFieldColor,
    required this.errorBorderTextFieldColor,
    required this.focusedBackgroundTextFieldColor,
    required this.unfocusedBackgroundTextFieldColor,
    required this.appBarColor,
    required this.overlayAlert,
    required this.backgroundContainer,
    required this.circularIndicatorColor,
    required this.backgroundCircularIndicator,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? cursorColor,
    Color? pinputCursorColor,
    Color? backgroundAvatarColor,
    Color? iconColor,
    Color? buttonColor,
    Color? buttonNegativeColor,
    Color? buttonDisableColor,
    Color? borderTextFieldColor,
    Color? errorBorderTextFieldColor,
    Color? focusedBackgroundTextFieldColor,
    Color? unfocusedBackgroundTextFieldColor,
    Color? appBarColor,
    Color? overlayAlert,
    Color? backgroundContainer,
    Color? circularIndicatorColor,
    Color? backgroundCircularIndicator,
  }) {
    return ThemeColors(
      cursorColor: cursorColor ?? this.cursorColor,
      pinputCursorColor: pinputCursorColor ?? this.pinputCursorColor,
      backgroundAvatarColor:
          backgroundAvatarColor ?? this.backgroundAvatarColor,
      iconColor: iconColor ?? this.iconColor,
      buttonColor: buttonColor ?? this.buttonColor,
      buttonNegativeColor: buttonNegativeColor ?? this.buttonNegativeColor,
      buttonDisableColor: buttonDisableColor ?? this.buttonDisableColor,
      borderTextFieldColor: borderTextFieldColor ?? this.borderTextFieldColor,
      errorBorderTextFieldColor:
          errorBorderTextFieldColor ?? this.errorBorderTextFieldColor,
      focusedBackgroundTextFieldColor: focusedBackgroundTextFieldColor ??
          this.focusedBackgroundTextFieldColor,
      unfocusedBackgroundTextFieldColor: unfocusedBackgroundTextFieldColor ??
          this.unfocusedBackgroundTextFieldColor,
      appBarColor: appBarColor ?? this.appBarColor,
      overlayAlert: overlayAlert ?? this.overlayAlert,
      backgroundContainer: backgroundContainer ?? this.backgroundContainer,
      circularIndicatorColor:
          circularIndicatorColor ?? this.circularIndicatorColor,
      backgroundCircularIndicator:
          backgroundCircularIndicator ?? this.backgroundCircularIndicator,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors(
      cursorColor: Color.lerp(
        cursorColor,
        other.cursorColor,
        t,
      )!,
      pinputCursorColor: Color.lerp(
        pinputCursorColor,
        other.pinputCursorColor,
        t,
      )!,
      backgroundAvatarColor: Color.lerp(
        backgroundAvatarColor,
        other.backgroundAvatarColor,
        t,
      )!,
      iconColor: Color.lerp(
        iconColor,
        other.iconColor,
        t,
      )!,
      buttonColor: Color.lerp(
        buttonColor,
        other.buttonColor,
        t,
      )!,
      buttonNegativeColor: Color.lerp(
        buttonNegativeColor,
        other.buttonNegativeColor,
        t,
      )!,
      buttonDisableColor: Color.lerp(
        buttonDisableColor,
        other.buttonDisableColor,
        t,
      )!,
      borderTextFieldColor: Color.lerp(
        borderTextFieldColor,
        other.borderTextFieldColor,
        t,
      )!,
      errorBorderTextFieldColor: Color.lerp(
        errorBorderTextFieldColor,
        other.errorBorderTextFieldColor,
        t,
      )!,
      focusedBackgroundTextFieldColor: Color.lerp(
        focusedBackgroundTextFieldColor,
        other.focusedBackgroundTextFieldColor,
        t,
      )!,
      unfocusedBackgroundTextFieldColor: Color.lerp(
        unfocusedBackgroundTextFieldColor,
        other.unfocusedBackgroundTextFieldColor,
        t,
      )!,
      appBarColor: Color.lerp(
        appBarColor,
        other.appBarColor,
        t,
      )!,
      overlayAlert: Color.lerp(
        overlayAlert,
        other.overlayAlert,
        t,
      )!,
      backgroundContainer: Color.lerp(
        backgroundContainer,
        other.backgroundContainer,
        t,
      )!,
      circularIndicatorColor: Color.lerp(
        circularIndicatorColor,
        other.circularIndicatorColor,
        t,
      )!,
      backgroundCircularIndicator: Color.lerp(
        backgroundCircularIndicator,
        other.backgroundCircularIndicator,
        t,
      )!,
    );
  }

  static get light => const ThemeColors(
        cursorColor: AppColorsLight.black,
        pinputCursorColor: AppColorsLight.grey,
        backgroundAvatarColor: AppColorsLight.hoar,
        iconColor: AppColorsLight.grey,
        buttonColor: AppColorsLight.blue,
        buttonNegativeColor: AppColorsLight.white,
        buttonDisableColor: AppColorsLight.hoar,
        borderTextFieldColor: AppColorsLight.wan,
        errorBorderTextFieldColor: AppColorsLight.pink,
        focusedBackgroundTextFieldColor: AppColorsLight.white,
        unfocusedBackgroundTextFieldColor: AppColorsLight.hoar,
        appBarColor: AppColorsLight.white,
        overlayAlert: AppColorsLight.hoar,
        backgroundContainer: AppColorsLight.hoar,
        circularIndicatorColor: AppColorsLight.blue,
        backgroundCircularIndicator: AppColorsLight.hoar,
      );
}
