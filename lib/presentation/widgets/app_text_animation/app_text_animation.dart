import 'package:flutter/material.dart';

class AppTextAnimation extends StatelessWidget {
  const AppTextAnimation({
    required this.text,
    required this.animationKey,
    super.key,
  });

  final Text text;
  final ValueKey<dynamic> animationKey;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: Builder(
        key: animationKey,
        builder: (_) {
          return text;
        },
      ),
    );
  }
}
