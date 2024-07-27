import 'package:carousel_slider/carousel_slider.dart';
import 'package:core/core.dart';
import 'package:dating_app/core/constants/enums/routes_enum.dart';
import 'package:dating_app/core/constants/localization/locale_keys.g.dart';
import 'package:dating_app/core/constants/model_constants.dart';
import 'package:dating_app/core/constants/models/onboarding/onboarding_model_for_constant.dart';
import 'package:dating_app/core/extensions/context/context_ext.dart';
import 'package:dating_app/core/extensions/string/string_ext.dart';
import 'package:dating_app/core/router/app_router.dart';
import 'package:dating_app/injection.dart';
import 'package:dating_app/presentation/pages/authentication/onboarding/onboarding_page_viewmodel.dart';
import 'package:dating_app/presentation/widgets/app_button/app_elevated_button.dart';
import 'package:dating_app/presentation/widgets/app_container/app_container.dart';
import 'package:dating_app/presentation/widgets/app_text_animation/app_text_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

part 'onboarding_page_mixin.dart';
part 'widgets/onboarding_page_have_account.dart';
part 'widgets/onboarding_page_create_account_button.dart';
part 'widgets/onboarding_page_carousel_dots.dart';
part 'widgets/onboarding_page_carousel_description.dart';
part 'widgets/onboarding_page_carousel_title.dart';
part 'widgets/onboarding_page_carousel_item.dart';
part 'widgets/onboarding_page_carousel.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage>
    with _OnboardingPageMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  SingleChildScrollView _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          context.ext.sizedBox.height.xl,
          _buildCarousel(),
          Builder(
            builder: (ctx) {
              return AppContainer(
                containerContext: ctx,
                padding: context.ext.padding.horizontal.xxxl * 1.5,
                child: Column(
                  children: [
                    SizedBox(
                      height: context.ext.values.xxxl * 1.25,
                    ),
                    _buildCarouselTitle(),
                    context.ext.sizedBox.height.lg,
                    _buildCarouselDescription(),
                    context.ext.sizedBox.height.xl,
                    _buildCarouselDots(),
                    context.ext.sizedBox.height.xxxl,
                    SizedBox(
                      width: double.infinity,
                      height: context.ext.values.xxl * 1.5,
                      child: _buildCreateAccountButton(),
                    ),
                    context.ext.sizedBox.height.xl,
                    _buildHaveAccount(),
                  ],
                ),
              );
            },
          ),
          context.ext.sizedBox.height.lg,
        ],
      ),
    );
  }

  _OnboardingPageCarousel _buildCarousel() {
    return _OnboardingPageCarousel(
      onboardingModels: _onboardingModels,
      onPageChanged: (index, _) {
        _viewModel.updateCurrentCarouselIndex(index);
      },
    );
  }

  Observer _buildCarouselTitle() {
    return Observer(
      builder: (_) {
        return _OnboardingPageCarouselTitle(
          carouselCurrentIndex: _viewModel.currentCarouselIndex,
          model: _onboardingModels[_viewModel.currentCarouselIndex],
        );
      },
    );
  }

  Observer _buildCarouselDescription() {
    return Observer(
      builder: (_) {
        return _OnboardingPageCarouselDescription(
          carouselCurrentIndex: _viewModel.currentCarouselIndex,
          model: _onboardingModels[_viewModel.currentCarouselIndex],
        );
      },
    );
  }

  Observer _buildCarouselDots() {
    return Observer(
      builder: (_) {
        return _OnboardingPageCarouselDots(
          carouselLength: _onboardingModels.length,
          currentCarouselIndex: _viewModel.currentCarouselIndex,
        );
      },
    );
  }

  _OnboardingPageCreateAccountButton _buildCreateAccountButton() =>
      _OnboardingPageCreateAccountButton(onPressed: _onCreateAccountButton);

  _OnboardingPageHaveAccount _buildHaveAccount() =>
      _OnboardingPageHaveAccount(onPressed: _onSignInButton);
}
