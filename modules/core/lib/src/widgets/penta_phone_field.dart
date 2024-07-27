import 'dart:math' as math;
import 'package:core/core.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PentaPhoneField extends StatefulWidget {
  const PentaPhoneField({
    required this.hintText,
    super.key,
    this.controller,
  });

  final String hintText;
  final TextEditingController? controller;

  @override
  State<PentaPhoneField> createState() => _PentaPhoneFieldState();
}

class _PentaPhoneFieldState extends State<PentaPhoneField> {
  String _countryCode = '+1';

  late final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      keyboardType: TextInputType.number,
      maxLength: 20,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      onChanged: (value) {
        if (widget.controller != null) {
          widget.controller!.text = '$_countryCode$value';
        }
      },
      decoration: const InputDecoration().copyWith(
        hintText: widget.hintText,
        counterText: '',
        prefixIcon: IntrinsicHeight(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CountryCodePicker(
                padding: context.ext.padding.directional.smLeft,
                dialogSize: Size(
                  math.min(context.ext.screen.width * 0.9, 400),
                  math.min(context.ext.screen.height * 0.6, 500),
                ),
                onChanged: (value) {
                  _countryCode = value.dialCode ?? '+1';
                  if (widget.controller != null) {
                    widget.controller!.text =
                        '$_countryCode${_controller.text}';
                  }
                },
                showDropDownButton: true,
                searchDecoration: const InputDecoration().copyWith(),
                boxDecoration: const BoxDecoration().copyWith(),
                flagDecoration: const BoxDecoration().copyWith(),
                comparator: (a, b) {
                  final dialA = int.parse((a.dialCode ?? '+1').substring(1));
                  final dialB = int.parse((b.dialCode ?? '+1').substring(1));
                  return dialA.compareTo(dialB);
                },
                favorite: WidgetsBinding.instance.platformDispatcher.locales
                    .map((locale) {
                  return locale.countryCode ?? '+1';
                }).toList(),
                initialSelection: WidgetsBinding.instance.platformDispatcher
                        .locales.first.countryCode ??
                    '+1',
              ),
              const VerticalDivider(
                indent: 10,
                endIndent: 10,
              ),
              context.ext.sizedBox.width.sm,
            ],
          ),
        ),
      ),
    );
  }
}
