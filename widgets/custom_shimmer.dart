
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';


class CustomShimmer extends StatelessWidget {
  const CustomShimmer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      // baseColor: Colors.grey.withOpacity(0.3),
      highlightColor: Colors.white,
      child: child,
    );
  }
}
