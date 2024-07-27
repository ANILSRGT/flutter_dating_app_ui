import 'package:core/core.dart';
import 'package:dating_app/presentation/widgets/app_button/app_elevated_button.dart';
import 'package:flutter/material.dart';

class AppSocialButton extends AppElevatedButton {
  const AppSocialButton({
    required this.icon,
    super.onPressed,
    super.key,
    super.isLoading,
    super.isDisabled,
    this.size,
  }) : super(
          child: icon,
          isInvertedStyle: true,
        );

  final Widget icon;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size ?? context.ext.screen.width * 0.15,
      height: size ?? context.ext.screen.width * 0.15,
      child: super.build(context),
    );
  }
}
