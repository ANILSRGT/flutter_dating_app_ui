import 'package:core/core.dart';
import 'package:dating_app/core/constants/enums/routes_enum.dart';
import 'package:dating_app/core/constants/icon_constants.dart';
import 'package:dating_app/core/constants/localization/locale_keys.g.dart';
import 'package:dating_app/core/extensions/string/string_ext.dart';
import 'package:dating_app/core/router/app_router.dart';
import 'package:dating_app/injection.dart';
import 'package:dating_app/presentation/widgets/app_button/app_elevated_button.dart';
import 'package:dating_app/presentation/widgets/verification_dialog/verification_dialog.dart';
import 'package:flutter/material.dart';

part 'pre_verification_screen_mixin.dart';

enum VerificationTypes { phone, email }

class PreVerificationScreenArgs {
  const PreVerificationScreenArgs({required this.verificationType});

  final VerificationTypes verificationType;
}

class PreVerificationScreen extends StatefulWidget {
  const PreVerificationScreen({super.key});

  @override
  State<PreVerificationScreen> createState() => _PreVerificationScreenState();
}

class _PreVerificationScreenState extends State<PreVerificationScreen>
    with PreVerificationScreenMixin {
  @override
  Widget build(BuildContext context) {
    if (_isFirstBuild) {
      _args = ModalRoute.of(context)!.settings.arguments!
          as PreVerificationScreenArgs;
      _isFirstBuild = false;
    }
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    final ModalRoute<dynamic>? parentRoute = ModalRoute.of(context);
    return AppBar(
      automaticallyImplyLeading: false,
      leading: (parentRoute?.impliesAppBarDismissal ?? false)
          ? IconButton(
              icon: IconConstants.back,
              onPressed: () => Injection.read<AppRouter>().goBackFirst(),
            )
          : null,
    );
  }

  SingleChildScrollView _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: RemovePaddingList.generate(
          padding: context.ext.padding.horizontal.xl,
          children: [
            context.ext.sizedBox.height.xxxl,
            _buildTitle(),
            context.ext.sizedBox.height.sm,
            _buildDescription(),
            ...context.ext.sizedBox.height.xxl.ext.widget * 2,
            _verificationTypeField(),
            ...context.ext.sizedBox.height.xxxl.ext.widget * 2,
            SizedBox(
              width: double.infinity,
              height: 50,
              child: _continueButton(),
            ),
            context.ext.sizedBox.height.lg,
          ],
        ),
      ),
    );
  }

  Text _buildTitle() {
    return Text(
      switch (_args.verificationType) {
        VerificationTypes.phone => LocaleKeys
            .presentationScreensVerificationCodeAuthPreVerificationScreenTitlePhone
            .extApp
            .tranlation
            .tr,
        VerificationTypes.email => LocaleKeys
            .presentationScreensVerificationCodeAuthPreVerificationScreenTitleEmail
            .extApp
            .tranlation
            .tr,
      },
      textAlign: TextAlign.start,
      style: context.ext.theme.textTheme.displaySmall,
    );
  }

  Text _buildDescription() {
    return Text(
      switch (_args.verificationType) {
        VerificationTypes.phone => LocaleKeys
            .presentationScreensVerificationCodeAuthPreVerificationScreenDescriptionPhone
            .extApp
            .tranlation
            .tr,
        VerificationTypes.email => LocaleKeys
            .presentationScreensVerificationCodeAuthPreVerificationScreenDescriptionEmail
            .extApp
            .tranlation
            .tr,
      },
      textAlign: TextAlign.start,
      style: context.ext.theme.textTheme.bodyMedium,
    );
  }

  Widget _verificationTypeField() {
    return switch (_args.verificationType) {
      VerificationTypes.phone => _phoneField(),
      VerificationTypes.email => _emailField(),
    };
  }

  Widget _phoneField() {
    return PentaPhoneField(
      controller: _inputController,
      hintText: LocaleKeys
          .presentationScreensVerificationCodeAuthPreVerificationScreenPhoneNumberInputHint
          .extApp
          .tranlation
          .tr,
    );
  }

  Widget _emailField() {
    return TextFormField(
      controller: _inputController,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration().copyWith(
        hintText: LocaleKeys
            .presentationScreensVerificationCodeAuthPreVerificationScreenEmailInputHint
            .extApp
            .tranlation
            .tr,
      ),
    );
  }

  AppElevatedButton _continueButton() {
    return AppElevatedButton(
      onPressed: _onContinueButton,
      child: Text(
        LocaleKeys
            .presentationScreensVerificationCodeAuthPreVerificationScreenContinueButton
            .extApp
            .tranlation
            .tr,
      ),
    );
  }
}
