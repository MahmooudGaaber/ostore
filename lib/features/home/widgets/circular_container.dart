// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ostore/util/constant/colors.dart';

class OstoreCircularContainer extends StatelessWidget {
  OstoreCircularContainer({
    super.key,
    required this.data,
  });

  final OstoreCircularContainerData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(data.padding ?? 0),
      height: data.height ?? 400,
      width: data.width ?? 400,
      decoration: BoxDecoration(
        color: data.backgroundColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(data.radius ?? 400),
      ),
      child: data.child,
    );
  }
}

class OstoreCircularContainerData {
  final double? width;
  final double? height;
  final double? radius;
  final double? padding;
  final Widget child;
  Color backgroundColor = OstoreColors.textWhite;

  OstoreCircularContainerData({
    required this.width,
    required this.height,
    required this.radius,
    required this.padding,
    required this.child,
    required this.backgroundColor,
  });
}
