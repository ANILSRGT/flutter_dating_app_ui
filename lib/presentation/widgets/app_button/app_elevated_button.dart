import 'package:dating_app/core/extensions/context/context_ext.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    required this.onPressed,
    required this.child,
    this.isInvertedStyle = false,
    this.isLoading = false,
    this.isDisabled = false,
    super.key,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final bool isInvertedStyle;
  final bool isLoading;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisabled
          ? null
          : (() {
              if (isLoading) return;
              onPressed?.call();
            }),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: isInvertedStyle
            ? context.extApp.theme.appColor.primary.color
            : context.extApp.theme.appColor.primary.onColor,
        backgroundColor: isInvertedStyle
            ? context.extApp.theme.appColor.primary.onColor
            : context.extApp.theme.appColor.primary.color,
        iconColor: isInvertedStyle
            ? context.extApp.theme.appColor.primary.color
            : context.extApp.theme.appColor.primary.onColor,
        disabledForegroundColor: context.extApp.theme.appColor.grey.onColor,
        disabledBackgroundColor: context.extApp.theme.appColor.grey.color,
        disabledIconColor: context.extApp.theme.appColor.grey.onColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: isInvertedStyle
              ? BorderSide(
                  color: context.extApp.theme.appColor.grey.color,
                  width: 0.75,
                )
              : BorderSide.none,
        ),
        padding: const EdgeInsets.all(8),
        textStyle: const TextStyle().copyWith(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: isLoading && !isDisabled
          ? const CircularProgressIndicator.adaptive()
          : child,
    );
  }
}
