part of '../theme.dart';

// * Сопостовление кастомных текстовых тем с темами TextTheme

TextTheme createTextTheme() {
  return const TextTheme(
    headlineMedium: topicTextStyle,
    titleLarge: titleTextStyle,
    titleMedium: contentTextStyle,
    titleSmall: subtitleTextStyle,
    bodySmall: captionTextStyle,
    labelLarge: markerTextStyle,
  );
}
