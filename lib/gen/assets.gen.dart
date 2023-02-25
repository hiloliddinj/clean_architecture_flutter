/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/back.svg
  String get back => 'assets/images/back.svg';

  /// File path: assets/images/camera.svg
  String get camera => 'assets/images/camera.svg';

  /// File path: assets/images/delete.svg
  String get delete => 'assets/images/delete.svg';

  /// File path: assets/images/emoji.svg
  String get emoji => 'assets/images/emoji.svg';

  /// File path: assets/images/error.svg
  String get error => 'assets/images/error.svg';

  /// File path: assets/images/expand.svg
  String get expand => 'assets/images/expand.svg';

  /// File path: assets/images/heart_red.svg
  String get heartRed => 'assets/images/heart_red.svg';

  /// File path: assets/images/lock.svg
  String get lock => 'assets/images/lock.svg';

  /// File path: assets/images/logout.svg
  String get logout => 'assets/images/logout.svg';

  /// File path: assets/images/money_bag.svg
  String get moneyBag => 'assets/images/money_bag.svg';

  /// File path: assets/images/pencil.svg
  String get pencil => 'assets/images/pencil.svg';

  /// File path: assets/images/reload.svg
  String get reload => 'assets/images/reload.svg';

  /// File path: assets/images/replace.svg
  String get replace => 'assets/images/replace.svg';

  /// File path: assets/images/rotate.svg
  String get rotate => 'assets/images/rotate.svg';

  /// File path: assets/images/successfully.svg
  String get successfully => 'assets/images/successfully.svg';

  /// File path: assets/images/user.svg
  String get user => 'assets/images/user.svg';

  /// List of all assets
  List<String> get values => [
        back,
        camera,
        delete,
        emoji,
        error,
        expand,
        heartRed,
        lock,
        logout,
        moneyBag,
        pencil,
        reload,
        replace,
        rotate,
        successfully,
        user
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
