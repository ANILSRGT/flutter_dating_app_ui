part of '../authentication_page.dart';

class _AuthenticationPageTermsOfUseButton extends StatelessWidget {
  const _AuthenticationPageTermsOfUseButton();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        LocaleKeys.presentationPagesAuthenticationAuthenticationTermsOfUseButton
            .extApp.tranlation.tr,
      ),
    );
  }
}
