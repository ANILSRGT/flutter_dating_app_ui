import 'package:core/core.dart';
import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(),
        ),
        Padding(
          padding: context.ext.padding.horizontal.md,
          child: child,
        ),
        const Expanded(
          child: Divider(),
        ),
      ],
    );
  }
}
