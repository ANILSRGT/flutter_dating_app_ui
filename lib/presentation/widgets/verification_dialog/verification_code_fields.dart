import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'verification_code_fields_mixin.dart';

class VerificationCodeFields extends StatefulWidget {
  const VerificationCodeFields({
    required this.codeLength,
    required this.onSubmitted,
    super.key,
  });

  final int codeLength;
  final void Function(int) onSubmitted;

  @override
  State<VerificationCodeFields> createState() => _VerificationCodeFieldsState();
}

class _VerificationCodeFieldsState extends State<VerificationCodeFields>
    with VerificationCodeFieldsMixin {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: List.generate(widget.codeLength, (index) {
        return SizedBox(
          width: 40,
          child: TextField(
            controller: _controllers[index],
            focusNode: _focusNodes[index],
            keyboardType: TextInputType.none,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            textAlign: TextAlign.center,
            maxLength: 1,
            decoration: const InputDecoration().copyWith(
              counterText: '',
              contentPadding: EdgeInsets.zero,
            ),
          ),
        );
      }),
    );
  }
}
