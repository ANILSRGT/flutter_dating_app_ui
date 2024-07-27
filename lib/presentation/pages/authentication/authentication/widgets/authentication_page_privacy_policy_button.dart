part of '../authentication_page.dart';

class _AuthenticationPagePrivacyPolicyButton extends StatelessWidget {
  const _AuthenticationPagePrivacyPolicyButton();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        LocaleKeys
            .presentationPagesAuthenticationAuthenticationPrivacyPolicyButton
            .extApp
            .tranlation
            .tr,
      ),
    );
  }
}
