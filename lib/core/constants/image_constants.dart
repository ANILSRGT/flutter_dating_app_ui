final class ImageConstants {
  const ImageConstants._();

  static const String _imageDir = 'assets/images';

  //~ Logo
  static const String _logoDir = 'assets/logos';
  static String get logo => '$_logoDir/logo.png';

  //~ Onboarding
  static const String _onboardingDir = '$_imageDir/onboarding';
  static String get onboarding1 => '$_onboardingDir/onboarding_1.jpg';
  static String get onboarding2 => '$_onboardingDir/onboarding_2.jpg';
  static String get onboarding3 => '$_onboardingDir/onboarding_3.jpg';

  //~ Not Found
  static const String _notFoundDir = '$_imageDir/not_found';
  static String get notFoundMalePlugSvg => '$_notFoundDir/male_plug.svg';
  static String get notFoundFemalePlugSvg => '$_notFoundDir/female_plug.svg';
  static String get notFoundCableForPlugSvg =>
      '$_notFoundDir/cable_for_plug.svg';
}
