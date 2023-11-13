/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/facebook_icon.svg
  SvgGenImage get facebookIcon =>
      const SvgGenImage('assets/icons/facebook_icon.svg');

  /// File path: assets/icons/google_icon.svg
  SvgGenImage get googleIcon =>
      const SvgGenImage('assets/icons/google_icon.svg');

  /// File path: assets/icons/logo_blue.svg
  SvgGenImage get logoBlue => const SvgGenImage('assets/icons/logo_blue.svg');

  /// File path: assets/icons/logo_white.svg
  SvgGenImage get logoWhite => const SvgGenImage('assets/icons/logo_white.svg');

  /// File path: assets/icons/messages_icon.svg
  SvgGenImage get messagesIcon =>
      const SvgGenImage('assets/icons/messages_icon.svg');

  /// File path: assets/icons/password_icon.svg
  SvgGenImage get passwordIcon =>
      const SvgGenImage('assets/icons/password_icon.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
