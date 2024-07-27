import 'dart:math' as math;
import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({
    required this.child,
    required this.containerContext,
    super.key,
    this.height,
    this.padding,
  });

  final Widget child;
  final BuildContext containerContext;
  final double? height;

  /// Padding for the container
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: math.min(
        MediaQuery.of(containerContext).size.width,
        600,
      ),
      height: height,
      child: child,
    );
  }
}
