part of '../authentication_page.dart';

class _AuthenticationPageAppLogo extends StatelessWidget {
  const _AuthenticationPageAppLogo();

  @override
  Widget build(BuildContext context) {
    final imageSize = context.ext.screen.byOrientation(
      portrait: context.ext.screen.width * 0.3,
      landscape: context.ext.screen.height * 0.3,
    );

    return Image.asset(
      ImageConstants.logo,
      width: imageSize,
      height: imageSize,
    );
  }
}
