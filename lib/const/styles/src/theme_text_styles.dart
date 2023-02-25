part of '../theme.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  final TextStyle title;
  final TextStyle appDescription;
  final TextStyle profileSettingItem;
  final TextStyle textInButton;
  final TextStyle textInNegativeButton;
  final TextStyle textInDisableButton;
  final TextStyle textButton;
  final TextStyle labelTextField;
  final TextStyle hollowLabelTextField;
  final TextStyle errorTextField;
  final TextStyle contentTextField;
  final TextStyle errorInfo;
  final TextStyle textInIconButton;
  final TextStyle textButtonAppBar;
  final TextStyle textErrorOverlayAlert;
  final TextStyle textSuccessOverlayAlert;
  final TextStyle textWishTitle;
  final TextStyle textWishSubtitle;
  final TextStyle textSettingContainerTitle;
  final TextStyle textSettingContainerSubtitle;
  final TextStyle textBottomButton;
  final TextStyle textBottomSheetSubtitle;
  final TextStyle textMyWishCounter;
  final TextStyle textBlack16;
  final TextStyle textGrey16;
  final TextStyle textClickableContent;

  ThemeTextStyles({
    required this.title,
    required this.appDescription,
    required this.profileSettingItem,
    required this.textInButton,
    required this.textInNegativeButton,
    required this.textInDisableButton,
    required this.textButton,
    required this.labelTextField,
    required this.hollowLabelTextField,
    required this.errorTextField,
    required this.contentTextField,
    required this.errorInfo,
    required this.textInIconButton,
    required this.textButtonAppBar,
    required this.textErrorOverlayAlert,
    required this.textSuccessOverlayAlert,
    required this.textWishTitle,
    required this.textWishSubtitle,
    required this.textSettingContainerTitle,
    required this.textSettingContainerSubtitle,
    required this.textBottomButton,
    required this.textBottomSheetSubtitle,
    required this.textMyWishCounter,
    required this.textBlack16,
    required this.textGrey16,
    required this.textClickableContent,
  });

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? title,
    TextStyle? appDescription,
    TextStyle? profileSettingItem,
    TextStyle? textInButton,
    TextStyle? textInNegativeButton,
    TextStyle? textInDisableButton,
    TextStyle? textButton,
    TextStyle? labelTextField,
    TextStyle? hollowLabelTextField,
    TextStyle? errorTextField,
    TextStyle? contentTextField,
    TextStyle? errorInfo,
    TextStyle? textInIconButton,
    TextStyle? textButtonAppBar,
    TextStyle? textErrorOverlayAlert,
    TextStyle? textSuccessOverlayAlert,
    TextStyle? textWishTitle,
    TextStyle? textWishSubtitle,
    TextStyle? textSettingContainerTitle,
    TextStyle? textSettingContainerSubtitle,
    TextStyle? textBottomButton,
    TextStyle? textBottomSheetSubtitle,
    TextStyle? textMyWishCounter,
    TextStyle? textBlack16,
    TextStyle? textGrey16,
    TextStyle? textClickableContent,
  }) {
    return ThemeTextStyles(
      title: title ?? this.title,
      appDescription: appDescription ?? this.appDescription,
      profileSettingItem: profileSettingItem ?? this.profileSettingItem,
      textInButton: textInButton ?? this.textInButton,
      textInNegativeButton: textInNegativeButton ?? this.textInNegativeButton,
      textInDisableButton: textInDisableButton ?? this.textInDisableButton,
      textButton: textButton ?? this.textButton,
      labelTextField: labelTextField ?? this.labelTextField,
      hollowLabelTextField: hollowLabelTextField ?? this.hollowLabelTextField,
      errorTextField: errorTextField ?? this.errorTextField,
      contentTextField: contentTextField ?? this.contentTextField,
      errorInfo: errorInfo ?? this.errorInfo,
      textInIconButton: textInIconButton ?? this.textInIconButton,
      textButtonAppBar: textButtonAppBar ?? this.textButtonAppBar,
      textErrorOverlayAlert:
          textErrorOverlayAlert ?? this.textErrorOverlayAlert,
      textSuccessOverlayAlert:
          textSuccessOverlayAlert ?? this.textSuccessOverlayAlert,
      textWishTitle: textWishTitle ?? this.textWishTitle,
      textWishSubtitle: textWishSubtitle ?? this.textWishSubtitle,
      textSettingContainerTitle:
          textSettingContainerTitle ?? this.textSettingContainerTitle,
      textSettingContainerSubtitle:
          textSettingContainerSubtitle ?? this.textSettingContainerSubtitle,
      textBottomButton: textBottomButton ?? this.textBottomButton,
      textBottomSheetSubtitle:
          textBottomSheetSubtitle ?? this.textBottomSheetSubtitle,
      textMyWishCounter: textMyWishCounter ?? this.textMyWishCounter,
      textBlack16: textBlack16 ?? this.textBlack16,
      textGrey16: textGrey16 ?? this.textGrey16,
      textClickableContent: textClickableContent ?? this.textClickableContent,
    );
  }

  @override
  ThemeExtension<ThemeTextStyles> lerp(
    ThemeExtension<ThemeTextStyles>? other,
    double t,
  ) {
    if (other is! ThemeTextStyles) {
      return this;
    }

    return ThemeTextStyles(
      title: TextStyle.lerp(
        title,
        other.title,
        t,
      )!,
      appDescription: TextStyle.lerp(
        appDescription,
        other.appDescription,
        t,
      )!,
      profileSettingItem: TextStyle.lerp(
        profileSettingItem,
        other.profileSettingItem,
        t,
      )!,
      textInButton: TextStyle.lerp(
        textInButton,
        other.textInButton,
        t,
      )!,
      textInNegativeButton: TextStyle.lerp(
        textInNegativeButton,
        other.textInNegativeButton,
        t,
      )!,
      textInDisableButton: TextStyle.lerp(
        textInDisableButton,
        other.textInDisableButton,
        t,
      )!,
      textButton: TextStyle.lerp(
        textButton,
        other.textButton,
        t,
      )!,
      labelTextField: TextStyle.lerp(
        labelTextField,
        other.labelTextField,
        t,
      )!,
      hollowLabelTextField: TextStyle.lerp(
        hollowLabelTextField,
        other.hollowLabelTextField,
        t,
      )!,
      errorTextField: TextStyle.lerp(
        errorTextField,
        other.errorTextField,
        t,
      )!,
      contentTextField: TextStyle.lerp(
        contentTextField,
        other.contentTextField,
        t,
      )!,
      errorInfo: TextStyle.lerp(
        errorInfo,
        other.errorInfo,
        t,
      )!,
      textInIconButton: TextStyle.lerp(
        textInIconButton,
        other.textInIconButton,
        t,
      )!,
      textButtonAppBar: TextStyle.lerp(
        textButtonAppBar,
        other.textButtonAppBar,
        t,
      )!,
      textErrorOverlayAlert: TextStyle.lerp(
        textErrorOverlayAlert,
        other.textErrorOverlayAlert,
        t,
      )!,
      textSuccessOverlayAlert: TextStyle.lerp(
        textSuccessOverlayAlert,
        other.textSuccessOverlayAlert,
        t,
      )!,
      textWishTitle: TextStyle.lerp(
        textWishTitle,
        other.textWishTitle,
        t,
      )!,
      textWishSubtitle: TextStyle.lerp(
        textWishSubtitle,
        other.textWishSubtitle,
        t,
      )!,
      textSettingContainerTitle: TextStyle.lerp(
        textSettingContainerTitle,
        other.textSettingContainerTitle,
        t,
      )!,
      textSettingContainerSubtitle: TextStyle.lerp(
        textSettingContainerSubtitle,
        other.textSettingContainerSubtitle,
        t,
      )!,
      textBottomButton: TextStyle.lerp(
        textBottomButton,
        other.textBottomButton,
        t,
      )!,
      textBottomSheetSubtitle: TextStyle.lerp(
        textBottomSheetSubtitle,
        other.textBottomSheetSubtitle,
        t,
      )!,
      textMyWishCounter: TextStyle.lerp(
        textMyWishCounter,
        other.textMyWishCounter,
        t,
      )!,
      textBlack16: TextStyle.lerp(
        textBlack16,
        other.textBlack16,
        t,
      )!,
      textGrey16: TextStyle.lerp(
        textGrey16,
        other.textGrey16,
        t,
      )!,
      textClickableContent: TextStyle.lerp(
        textClickableContent,
        other.textClickableContent,
        t,
      )!,
    );
  }

  static get light => ThemeTextStyles(
        title: topicTextStyle.copyWith(
          color: AppColorsLight.black,
        ),
        appDescription: captionTextStyle.copyWith(
          color: AppColorsLight.grey,
        ),
        profileSettingItem: contentTextStyle.copyWith(
          color: AppColorsLight.grey,
        ),
        textInButton: titleTextStyle.copyWith(
          color: AppColorsLight.white,
        ),
        textInNegativeButton: subtitleTextStyle.copyWith(
          color: AppColorsLight.blue,
        ),
        textInDisableButton: titleTextStyle.copyWith(
          color: AppColorsLight.grey,
        ),
        textButton: contentTextStyle.copyWith(
          color: AppColorsLight.blue,
        ),
        labelTextField: captionTextStyle.copyWith(
          color: AppColorsLight.grey,
        ),
        hollowLabelTextField: contentTextStyle.copyWith(
          color: AppColorsLight.grey,
        ),
        errorTextField: captionTextStyle.copyWith(
          color: AppColorsLight.pink,
        ),
        contentTextField: contentTextStyle.copyWith(
          color: AppColorsLight.black,
        ),
        textInIconButton: contentTextStyle.copyWith(
          color: AppColorsLight.grey,
        ),
        errorInfo: captionTextStyle.copyWith(
          color: AppColorsLight.pink,
        ),
        textButtonAppBar: titleTextStyle.copyWith(
          color: AppColorsLight.blue,
        ),
        textErrorOverlayAlert: captionTextStyle.copyWith(
          color: AppColorsLight.pink,
        ),
        textSuccessOverlayAlert: captionTextStyle.copyWith(
          color: AppColorsLight.green,
        ),
        textWishTitle: titleTextStyle.copyWith(
          color: AppColorsLight.white,
        ),
        textWishSubtitle: captionTextStyle.copyWith(
          color: AppColorsLight.white,
        ),
        textSettingContainerTitle: subtitleTextStyle.copyWith(
          color: AppColorsLight.black,
        ),
        textSettingContainerSubtitle: captionTextStyle.copyWith(
          color: AppColorsLight.grey,
        ),
        textBottomButton: contentTextStyle.copyWith(
          color: AppColorsLight.grey,
        ),
        textBottomSheetSubtitle: contentTextStyle.copyWith(
          color: AppColorsLight.grey,
        ),
        textMyWishCounter: markerTextStyle.copyWith(
          color: AppColorsLight.black,
        ),
        textBlack16: contentTextStyle.copyWith(
          color: AppColorsLight.black,
        ),
        textGrey16: contentTextStyle.copyWith(
          color: AppColorsLight.grey,
        ),
        textClickableContent: captionTextStyle.copyWith(
          color: AppColorsLight.blue,
        ),
      );
}
