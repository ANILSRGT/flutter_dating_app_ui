part of '../onboarding_page.dart';

class _OnboardingPageCarouselTitle extends StatelessWidget {
  const _OnboardingPageCarouselTitle({
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
        model.title,
        textAlign: TextAlign.center,
        style: context.ext.theme.textTheme.titleLarge?.copyWith(
          color: context.extApp.theme.appColor.primary.color,
        ),
      ),
    );
  }
}
