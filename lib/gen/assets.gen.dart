/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/facebook_icon.svg
  String get facebookIcon => 'assets/icons/facebook_icon.svg';

  /// File path: assets/icons/google_icon.svg
  String get googleIcon => 'assets/icons/google_icon.svg';

  /// File path: assets/icons/logo_blue.svg
  String get logoBlue => 'assets/icons/logo_blue.svg';

  /// File path: assets/icons/logo_white.svg
  String get logoWhite => 'assets/icons/logo_white.svg';

  /// File path: assets/icons/messages_icon.svg
  String get messagesIcon => 'assets/icons/messages_icon.svg';

  /// File path: assets/icons/password_icon.svg
  String get passwordIcon => 'assets/icons/password_icon.svg';

  /// List of all assets
  List<String> get values => [
        facebookIcon,
        googleIcon,
        logoBlue,
        logoWhite,
        messagesIcon,
        passwordIcon
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bag1.png
  AssetGenImage get bag1 => const AssetGenImage('assets/images/bag1.png');

  /// File path: assets/images/bag2.png
  AssetGenImage get bag2 => const AssetGenImage('assets/images/bag2.png');

  /// File path: assets/images/bag3.png
  AssetGenImage get bag3 => const AssetGenImage('assets/images/bag3.png');

  /// File path: assets/images/bag4.png
  AssetGenImage get bag4 => const AssetGenImage('assets/images/bag4.png');

  /// File path: assets/images/pic1.png
  AssetGenImage get pic1 => const AssetGenImage('assets/images/pic1.png');

  /// File path: assets/images/pic2.png
  AssetGenImage get pic2 => const AssetGenImage('assets/images/pic2.png');

  /// File path: assets/images/pic3.png
  AssetGenImage get pic3 => const AssetGenImage('assets/images/pic3.png');

  /// File path: assets/images/pic4.png
  AssetGenImage get pic4 => const AssetGenImage('assets/images/pic4.png');

  /// File path: assets/images/promo1.png
  AssetGenImage get promo1 => const AssetGenImage('assets/images/promo1.png');

  /// File path: assets/images/promo2.png
  AssetGenImage get promo2 => const AssetGenImage('assets/images/promo2.png');

  /// File path: assets/images/shoe1.png
  AssetGenImage get shoe1 => const AssetGenImage('assets/images/shoe1.png');

  /// File path: assets/images/shoe2.png
  AssetGenImage get shoe2 => const AssetGenImage('assets/images/shoe2.png');

  /// File path: assets/images/shoe3.png
  AssetGenImage get shoe3 => const AssetGenImage('assets/images/shoe3.png');

  /// File path: assets/images/shoe4.png
  AssetGenImage get shoe4 => const AssetGenImage('assets/images/shoe4.png');

  /// File path: assets/images/shoe_detail1.png
  AssetGenImage get shoeDetail1 =>
      const AssetGenImage('assets/images/shoe_detail1.png');

  /// File path: assets/images/shoe_detail2.png
  AssetGenImage get shoeDetail2 =>
      const AssetGenImage('assets/images/shoe_detail2.png');

  /// File path: assets/images/shoe_detail3.png
  AssetGenImage get shoeDetail3 =>
      const AssetGenImage('assets/images/shoe_detail3.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        bag1,
        bag2,
        bag3,
        bag4,
        pic1,
        pic2,
        pic3,
        pic4,
        promo1,
        promo2,
        shoe1,
        shoe2,
        shoe3,
        shoe4,
        shoeDetail1,
        shoeDetail2,
        shoeDetail3
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
