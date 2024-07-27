part of '../onboarding_page.dart';

class _OnboardingPageCarousel extends StatelessWidget {
  const _OnboardingPageCarousel({
    required this.onboardingModels,
    this.onPageChanged,
  });

  final List<OnboardingModelConstants> onboardingModels;
  final dynamic Function(int index, CarouselPageChangedReason realIndex)?
      onPageChanged;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: onboardingModels.length,
      options: CarouselOptions(
        height: 350,
        viewportFraction: 0.7,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
        onPageChanged: onPageChanged,
      ),
      itemBuilder: (_, index, realIndex) {
        return _OnboardingPageCarouselItem(
          index: index,
          model: onboardingModels[index],
        );
      },
    );
  }
}
