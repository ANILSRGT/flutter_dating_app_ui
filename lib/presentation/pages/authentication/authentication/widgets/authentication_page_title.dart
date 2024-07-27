part of '../authentication_page.dart';

class _AuthenticationPageTitle extends StatelessWidget {
  const _AuthenticationPageTitle();

  @override
  Widget build(BuildContext context) {
    return Text(
      LocaleKeys.presentationPagesAuthenticationAuthenticationTitle.extApp
          .tranlation.tr,
      textAlign: TextAlign.center,
      style: context.ext.theme.textTheme.titleLarge,
    );
  }
}
