part of '../onboarding_page.dart';

class _OnboardingPageCarouselItem extends StatelessWidget {
  const _OnboardingPageCarouselItem({
    required this.index,
    required this.model,
  });

  final int index;
  final OnboardingModelConstants model;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: context.ext.radius.border.all.lg,
      child: Image.asset(
        model.imageAsset,
        fit: BoxFit.cover,
      ),
    );
  }
}
