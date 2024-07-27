part of '../authentication_page.dart';

class _AuthenticationPageOrDivider extends StatelessWidget {
  const _AuthenticationPageOrDivider();

  @override
  Widget build(BuildContext context) {
    return AppDivider(
      child: Text(
        LocaleKeys.presentationPagesAuthenticationAuthenticationOrDivider.extApp
            .tranlation.tr,
      ),
    );
  }
}
