import 'package:flutter/material.dart';
import 'package:ostore/common/widgets/custom_shapes/curved_edges/curved_shapes.dart';

class OstoreHomeScreenCurvedEdged extends StatelessWidget {
  const OstoreHomeScreenCurvedEdged({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OstoreCurvedEdges(),
      child: child,
    );
  }
}
