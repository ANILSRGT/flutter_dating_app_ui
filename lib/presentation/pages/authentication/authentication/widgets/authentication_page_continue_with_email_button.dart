part of '../authentication_page.dart';

class _AuthenticationPageContinueWithEmailButton extends StatelessWidget {
  const _AuthenticationPageContinueWithEmailButton({
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AppElevatedButton(
      onPressed: onPressed,
      child: Text(
        LocaleKeys
            .presentationPagesAuthenticationAuthenticationContinueEmailButton
            .extApp
            .tranlation
            .tr,
      ),
    );
  }
}
