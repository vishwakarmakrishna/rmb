/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImageGen {
  const $AssetsImageGen();

  /// File path: assets/image/delete.png
  AssetGenImage get delete => const AssetGenImage('assets/image/delete.png');

  /// File path: assets/image/edit.png
  AssetGenImage get edit => const AssetGenImage('assets/image/edit.png');

  /// File path: assets/image/email.png
  AssetGenImage get email => const AssetGenImage('assets/image/email.png');

  /// File path: assets/image/fb.png
  AssetGenImage get fb => const AssetGenImage('assets/image/fb.png');

  /// File path: assets/image/female1.png
  AssetGenImage get female1 => const AssetGenImage('assets/image/female1.png');

  /// File path: assets/image/instagram.png
  AssetGenImage get instagram =>
      const AssetGenImage('assets/image/instagram.png');

  /// File path: assets/image/linkedin.png
  AssetGenImage get linkedin =>
      const AssetGenImage('assets/image/linkedin.png');

  /// File path: assets/image/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/image/logo.png');

  /// File path: assets/image/male1.png
  AssetGenImage get male1 => const AssetGenImage('assets/image/male1.png');

  /// File path: assets/image/male2.png
  AssetGenImage get male2 => const AssetGenImage('assets/image/male2.png');

  /// File path: assets/image/phone.png
  AssetGenImage get phone => const AssetGenImage('assets/image/phone.png');

  /// File path: assets/image/rbm_logo.png
  AssetGenImage get rbmLogo => const AssetGenImage('assets/image/rbm_logo.png');

  /// File path: assets/image/selected_radio.png
  AssetGenImage get selectedRadio =>
      const AssetGenImage('assets/image/selected_radio.png');

  /// File path: assets/image/share.png
  AssetGenImage get share => const AssetGenImage('assets/image/share.png');

  /// File path: assets/image/unselected_radio.png
  AssetGenImage get unselectedRadio =>
      const AssetGenImage('assets/image/unselected_radio.png');

  /// File path: assets/image/web.png
  AssetGenImage get web => const AssetGenImage('assets/image/web.png');

  /// File path: assets/image/whatsapp.png
  AssetGenImage get whatsapp =>
      const AssetGenImage('assets/image/whatsapp.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        delete,
        edit,
        email,
        fb,
        female1,
        instagram,
        linkedin,
        logo,
        male1,
        male2,
        phone,
        rbmLogo,
        selectedRadio,
        share,
        unselectedRadio,
        web,
        whatsapp
      ];
}

class Assets {
  Assets._();

  static const $AssetsImageGen image = $AssetsImageGen();
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
