import 'package:core/core.dart';
import 'package:dating_app/core/constants/enums/routes_enum.dart';
import 'package:dating_app/core/constants/icon_constants.dart';
import 'package:dating_app/core/constants/image_constants.dart';
import 'package:dating_app/core/constants/localization/locale_keys.g.dart';
import 'package:dating_app/core/extensions/string/string_ext.dart';
import 'package:dating_app/core/router/app_router.dart';
import 'package:dating_app/injection.dart';
import 'package:dating_app/presentation/pages/authentication/authentication/authentication_page_viewmodel.dart';
import 'package:dating_app/presentation/screens/verification_code_auth/pre_verification_screen.dart';
import 'package:dating_app/presentation/widgets/app_button/app_elevated_button.dart';
import 'package:dating_app/presentation/widgets/app_button/app_social_button.dart';
import 'package:dating_app/presentation/widgets/app_container/app_container.dart';
import 'package:dating_app/presentation/widgets/app_divider/app_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

part 'authentication_page_mixin.dart';
part 'widgets/authentication_page_app_logo.dart';
part 'widgets/authentication_page_apple_button.dart';
part 'widgets/authentication_page_continue_with_email_button.dart';
part 'widgets/authentication_page_facebook_button.dart';
part 'widgets/authentication_page_google_button.dart';
part 'widgets/authentication_page_or_divider.dart';
part 'widgets/authentication_page_privacy_policy_button.dart';
part 'widgets/authentication_page_terms_of_use_button.dart';
part 'widgets/authentication_page_title.dart';
part 'widgets/authentication_page_use_phone_number_button.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage>
    with _AuthenticationPageMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Center _buildBody() {
    return Center(
      child: SingleChildScrollView(
        child: AppContainer(
          containerContext: context,
          padding: context.ext.padding.horizontal.xxl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              context.ext.sizedBox.height.lg,
              _buildLogo(),
              context.ext.sizedBox.height.xxxl,
              context.ext.sizedBox.height.xl,
              _buildTitle(),
              context.ext.sizedBox.height.xxxl,
              SizedBox(
                height: 50,
                child: _continueWithEmailButton(),
              ),
              context.ext.sizedBox.height.xl,
              SizedBox(
                height: 50,
                child: _usePhoneNumberButton(),
              ),
              context.ext.sizedBox.height.xxxl,
              _orDivider(),
              context.ext.sizedBox.height.lg,
              _socialButtons(),
              context.ext.sizedBox.height.xxxl,
              _termsAndPrivacy(),
              context.ext.sizedBox.height.lg,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() => const _AuthenticationPageAppLogo();

  Widget _buildTitle() => Observer(
        builder: (_) {
          return const _AuthenticationPageTitle();
        },
      );

  Widget _continueWithEmailButton() =>
      _AuthenticationPageContinueWithEmailButton(
        onPressed: () => _onUsePhoneNumberButton(VerificationTypes.email),
      );

  Widget _usePhoneNumberButton() => _AuthenticationPageUsePhoneNumberButton(
        onPressed: () => _onUsePhoneNumberButton(VerificationTypes.phone),
      );

  Widget _orDivider() => Observer(
        builder: (_) {
          return const _AuthenticationPageOrDivider();
        },
      );

  Widget _socialButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _facebookButton(),
        context.ext.sizedBox.width.lg,
        _googleButton(),
        context.ext.sizedBox.width.lg,
        _appleButton(),
      ],
    );
  }

  Widget _facebookButton() => const _AuthenticationPageFacebookButton();

  Widget _googleButton() => const _AuthenticationPageGoogleButton();

  Widget _appleButton() => const _AuthenticationPageAppleButton();

  Widget _termsAndPrivacy() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _termsOfUseButton(),
        context.ext.sizedBox.width.md,
        _privacyPolicyButton(),
      ],
    );
  }

  Widget _termsOfUseButton() => const _AuthenticationPageTermsOfUseButton();

  Widget _privacyPolicyButton() =>
      const _AuthenticationPagePrivacyPolicyButton();
}
