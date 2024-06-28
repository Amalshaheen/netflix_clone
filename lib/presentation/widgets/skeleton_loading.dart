import 'package:flutter/material.dart';

class SkeletonLoading extends StatelessWidget {
  const SkeletonLoading({
    super.key,
    this.width,
    this.height,
    this.borderRadius,
    this.shape = BoxShape.rectangle,
    this.child,
  });

  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final BoxShape shape;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? double.infinity,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        shape: shape,
        borderRadius: borderRadius,
        color: Colors.grey[350],
      ),
      child: child,
    );
  }
}
