part of '../onboarding_page.dart';

class _OnboardingPageCarouselDescription extends StatelessWidget {
  const _OnboardingPageCarouselDescription({
    required this.carouselCurrentIndex,
    required this.model,
  });

  final int carouselCurrentIndex;
  final OnboardingModelConstants model;

  @override
  Widget build(BuildContext context) {
    return AppTextAnimation(
      animationKey: ValueKey(carouselCurrentIndex),
      text: Text(
        model.description,
        key: ValueKey(carouselCurrentIndex),
        textAlign: TextAlign.center,
        style: context.ext.theme.textTheme.bodyMedium,
      ),
    );
  }
}
