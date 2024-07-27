part of '../onboarding_page.dart';

class _OnboardingPageHaveAccount extends StatelessWidget {
  const _OnboardingPageHaveAccount({
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text:
              '${LocaleKeys.presentationPagesAuthenticationOnboardingHaveAccountText.extApp.tranlation.tr}\t',
          style: context.ext.theme.textTheme.bodyMedium,
          children: [
            TextSpan(
              text: LocaleKeys
                  .presentationPagesAuthenticationOnboardingHaveAccountButton
                  .extApp
                  .tranlation
                  .tr,
              style: context.ext.theme.textTheme.bodyMedium?.copyWith(
                color: context.extApp.theme.appColor.primary.color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
