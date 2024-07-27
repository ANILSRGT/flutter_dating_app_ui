import 'package:dating_app/core/extensions/context/context_ext.dart';
import 'package:flutter/material.dart';

class StackBadge extends StatelessWidget {
  const StackBadge({
    required this.child,
    super.key,
    this.showBadge = true,
  });

  /// The widget to display as the badge.
  final Widget child;

  /// Whether to show the badge or not.
  final bool showBadge;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        child,
        Visibility(
          visible: showBadge,
          child: Positioned(
            right: -2,
            top: -2,
            child: Material(
              shape: CircleBorder(
                side: BorderSide(
                  color: context.extApp.theme.appColor.primary.onColor,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                radius: 6,
                backgroundColor: context.extApp.theme.appColor.primary.color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
