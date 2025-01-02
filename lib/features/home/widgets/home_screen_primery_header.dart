import 'package:flutter/material.dart';
import 'package:ostore/features/home/widgets/circular_container.dart';
import 'package:ostore/features/home/widgets/home_screen_curved_edge.dart';
import 'package:ostore/util/constant/colors.dart';

class OstorePrimeryHeader extends StatelessWidget {
  const OstorePrimeryHeader({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return OstoreHomeScreenCurvedEdged(
      child: Container(
        padding: const EdgeInsets.all(0),
        color: OstoreColors.primaryColor,
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: OstoreCircularContainer(
                  data: OstoreCircularContainerData(
                    width: 400,
                    height: 400,
                    radius: 400,
                    padding: 0,
                    backgroundColor: OstoreColors.textWhite.withOpacity(0.1),
                    child: const SizedBox(),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: OstoreCircularContainer(
                  data: OstoreCircularContainerData(
                    width: 400,
                    height: 400,
                    radius: 400,
                    padding: 0,
                    backgroundColor: OstoreColors.textWhite.withOpacity(0.1),
                    child: const SizedBox(),
                  ),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
