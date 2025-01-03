import 'package:flutter/material.dart';
import 'package:ostore/util/constant/colors.dart';
import 'package:ostore/util/constant/sizeds.dart';

class OstorePannersRoundedImages extends StatelessWidget {
  const OstorePannersRoundedImages({
    super.key,
    required this.data,
  });

  final OstorePannersRounedeImagesData data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: data.onPressed,
      child: Container(
        width: data.width,
        height: data.height,
        padding: data.padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(data.borderRadius!),
          color: data.backgroundColor,
          border: data.border,
        ),
        child: ClipRRect(
          borderRadius: data.applyImageRadius
              ? BorderRadius.circular(data.borderRadius!)
              : BorderRadius.zero,
          child: data.isNetworkImage
              ? Image(
                  image: NetworkImage(data.imageUrl!),
                  fit: data.fit,
                )
              : Image(
                  image: AssetImage(data.imageUrl!),
                  fit: data.fit,
                ),
        ),
      ),
    );
  }
}

class OstorePannersRounedeImagesData {
  final double? width;
  final double? height;
  final double? borderRadius;
  final String? imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsets? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;

  OstorePannersRounedeImagesData({
    this.width,
    this.height,
    this.imageUrl,
    this.borderRadius = OstoreSizes.md,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor = OstoreColors.lightColor,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
  });
}
