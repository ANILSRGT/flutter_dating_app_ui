import 'package:dating_app/core/constants/image_constants.dart';
import 'package:dating_app/core/constants/localization/locale_keys.g.dart';
import 'package:dating_app/core/constants/models/onboarding/onboarding_model_for_constant.dart';
import 'package:dating_app/core/extensions/string/string_ext.dart';

final class ModelConstants {
  const ModelConstants._();

  static final List<OnboardingModelConstants> onboardingModels = [
    OnboardingModelConstants(
      imageAsset: ImageConstants.onboarding1,
      title: LocaleKeys
          .coreConstantsModelOnboardingModels1Title.extApp.tranlation.tr,
      description: LocaleKeys
          .coreConstantsModelOnboardingModels1Description.extApp.tranlation.tr,
    ),
    OnboardingModelConstants(
      imageAsset: ImageConstants.onboarding2,
      title: LocaleKeys
          .coreConstantsModelOnboardingModels2Title.extApp.tranlation.tr,
      description: LocaleKeys
          .coreConstantsModelOnboardingModels2Description.extApp.tranlation.tr,
    ),
    OnboardingModelConstants(
      imageAsset: ImageConstants.onboarding3,
      title: LocaleKeys
          .coreConstantsModelOnboardingModels3Title.extApp.tranlation.tr,
      description: LocaleKeys
          .coreConstantsModelOnboardingModels3Description.extApp.tranlation.tr,
    ),
  ];
}
