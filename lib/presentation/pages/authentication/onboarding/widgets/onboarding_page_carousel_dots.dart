part of '../onboarding_page.dart';

class _OnboardingPageCarouselDots extends StatelessWidget {
  const _OnboardingPageCarouselDots({
    required this.carouselLength,
    required this.currentCarouselIndex,
  });

  final int carouselLength;
  final int currentCarouselIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        carouselLength,
        (index) {
          final isLastPage = index == carouselLength - 1;
          final isCurrentPage = currentCarouselIndex == index;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: context.ext.values.md * 0.6,
            height: context.ext.values.md * 0.6,
            margin: isLastPage ? null : context.ext.padding.directional.mdRight,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isCurrentPage
                  ? context.extApp.theme.appColor.primary.color
                  : context.extApp.theme.appColor.grey.color,
            ),
          );
        },
      ),
    );
  }
}
