import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../const/styles/theme.dart';

extension BuildContextExt on BuildContext {
  ThemeTextStyles get text => Theme.of(this).extension<ThemeTextStyles>()!;

  ThemeColors get color => Theme.of(this).extension<ThemeColors>()!;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  AppLocalizations get local => AppLocalizations.of(this);

  void get showOverlayLoad => loaderOverlay.show(
        widget: Center(
          child: Container(
            padding: const EdgeInsets.all(6),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color.backgroundCircularIndicator,
            ),
            child: CircularProgressIndicator(
              color: color.circularIndicatorColor,
              strokeWidth: 3,
            ),
          ),
        ),
      );

  void get hideOverlayLoad => loaderOverlay.hide();
}
