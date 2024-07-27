part of '../onboarding_page.dart';

class _OnboardingPageCreateAccountButton extends StatelessWidget {
  const _OnboardingPageCreateAccountButton({
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AppElevatedButton(
      onPressed: onPressed,
      child: Text(
        LocaleKeys.presentationPagesAuthenticationOnboardingCreateAccountButton
            .extApp.tranlation.tr,
      ),
    );
  }
}
