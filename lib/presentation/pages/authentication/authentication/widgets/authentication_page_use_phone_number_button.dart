part of '../authentication_page.dart';

class _AuthenticationPageUsePhoneNumberButton extends StatelessWidget {
  const _AuthenticationPageUsePhoneNumberButton({
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AppElevatedButton(
      onPressed: onPressed,
      isInvertedStyle: true,
      child: Text(
        LocaleKeys
            .presentationPagesAuthenticationAuthenticationUsePhoneNumberButton
            .extApp
            .tranlation
            .tr,
      ),
    );
  }
}
