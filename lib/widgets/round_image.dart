import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

enum ImageType { network, assets, file }

/// 圆角头像
class RoundImage extends StatelessWidget {
  /// 半径
  final double radius;

  final double height;

  final double width;

  /// 边框
  final BoxBorder border;

  final BoxFit fit;

  /// 文件路径
  final String path;

  final VoidCallback onTap;

  final ImageType source;

  RoundImage({
    Key key,
    this.width: 70,
    this.radius: .0,
    this.height: 70,
    this.border,
    this.path,
    this.onTap,
    this.fit: BoxFit.cover,
    this.source: ImageType.network,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageView;
    switch (source) {
      case ImageType.network:
        imageView = CachedNetworkImage(
            imageUrl: path,
            fit: fit,
            width: width,
            height: height,
            errorWidget: (BuildContext context, String url, Object error) =>
                Image.asset('assets/images/img_not_available.jpeg',
                    fit: fit, width: width, height: height));
        break;
      case ImageType.assets:
        imageView = Image.asset(path, fit: fit, width: width, height: height);
        break;
      case ImageType.file:
        imageView =
            Image.file(File(path), fit: fit, width: width, height: height);
        break;
    }

    return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: Container(
            decoration: BoxDecoration(
                border: border, borderRadius: BorderRadius.circular(radius)),
            height: height,
            width: width,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(radius),
                child: imageView)));
  }
}
