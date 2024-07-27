import 'dart:async';
import 'dart:math' as math;
import 'package:core/core.dart';
import 'package:dating_app/core/constants/icon_constants.dart';
import 'package:dating_app/core/extensions/context/context_ext.dart';
import 'package:dating_app/core/router/app_router.dart';
import 'package:dating_app/injection.dart';
import 'package:dating_app/presentation/widgets/verification_dialog/verification_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'verification_dialog_mixin.dart';

class VerificationDialog extends StatefulWidget {
  const VerificationDialog({
    required this.codeLength,
    required this.onEnteredCode,
    required this.resendCode,
    super.key,
  }) : assert(codeLength > 0, 'codeLength must be greater than 0');

  /// The length of the code that the user should enter.
  /// <br>The code length must be greater than `0`.
  final int codeLength;

  /// Callback function that will be called when the user entered the code.
  /// If the code is correct, the function should return `true`
  /// otherwise `false`.
  final Future<bool> Function(int code) onEnteredCode;

  /// Callback function that will be called when the user wants
  /// to resend the code.
  final VoidCallback resendCode;

  @override
  State<VerificationDialog> createState() => _VerificationDialogState();
}

class _VerificationDialogState extends State<VerificationDialog>
    with VerificationDialogMixin {
  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      backgroundColor: context.extApp.theme.appColor.background.color,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: IconConstants.back,
        onPressed: () => Injection.read<AppRouter>().goBack(result: false),
      ),
    );
  }

  Widget _buildBody() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            context.ext.sizedBox.height.lg,
            _buildTimer(),
            context.ext.sizedBox.height.lg,
            SizedBox(
              width: math.min(context.ext.screen.width * 0.5, 250),
              child: _buildDescription(),
            ),
            ...context.ext.sizedBox.height.xxl.ext.widget * 2,
            _codeFields(),
            ...context.ext.sizedBox.height.xxxl.ext.widget * 2,
            SizedBox(
              width: math.min(context.ext.screen.width * 0.95, 400),
              child: IntrinsicHeight(
                child: _inputCodeButtons(),
              ),
            ),
            ...context.ext.sizedBox.height.xxl.ext.widget * 2,
            _sendAgainButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildTimer() {
    return Text(
      '02:00',
      textAlign: TextAlign.center,
      style: context.ext.theme.textTheme.displayMedium,
    );
  }

  Widget _buildDescription() {
    return Text(
      'Type the verification code we’ve sent you',
      textAlign: TextAlign.center,
      style: context.ext.theme.textTheme.bodyLarge,
    );
  }

  Widget _codeFields() {
    return VerificationCodeFields(
      codeLength: widget.codeLength,
      onSubmitted: _onCodeSubmitted,
    );
  }

  Widget _inputCodeButtons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: context.ext.widget.seperateGenerator(
        [
          ...List.generate(
            3,
            (outIndex) {
              return Flexible(
                child: Row(
                  children: List.generate(
                    3,
                    (inIndex) {
                      final realIndex = inIndex + outIndex * 3 + 1;
                      return Expanded(
                        child: FittedBox(
                          child: _numberButton(realIndex),
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          ),
          Flexible(
            child: Row(
              children: [
                const Expanded(child: SizedBox()),
                Expanded(
                  child: FittedBox(
                    child: _numberButton(0),
                  ),
                ),
                Expanded(
                  child: FittedBox(
                    child: _backspaceButton(),
                  ),
                ),
              ],
            ),
          ),
        ],
        context.ext.sizedBox.height.lg,
      ),
    );
  }

  TextButton _numberButton(int number) {
    return TextButton(
      onPressed: () {
        simulateKeyPress(number);
      },
      child: Text(
        '$number',
        textAlign: TextAlign.center,
        style: context.ext.theme.textTheme.titleMedium,
      ),
    );
  }

  IconButton _backspaceButton() {
    return IconButton(
      icon: IconConstants.backspace,
      onPressed: () {
        simulateKeyPress(0);
      },
    );
  }

  TextButton _sendAgainButton() {
    return TextButton(
      onPressed: widget.resendCode,
      child: Text(
        'Send again',
        style: context.ext.theme.textTheme.titleSmall?.copyWith(
          color: context.extApp.theme.appColor.primary.color,
        ),
      ),
    );
  }
}
