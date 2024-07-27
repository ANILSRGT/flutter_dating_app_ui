import 'package:flutter/material.dart';

enum AppLocalesEnum {
  enUS(
    languageCode: 'en',
    countryCode: 'US',
    name: 'English (US)',
  ),
  trTR(
    languageCode: 'tr',
    countryCode: 'TR',
    name: 'Türkçe (TR)',
  );

  const AppLocalesEnum({
    required String languageCode,
    required String countryCode,
    required this.name,
  })  : _languageCode = languageCode,
        _countryCode = countryCode;

  final String _languageCode;
  final String _countryCode;
  final String name;

  static AppLocalesEnum get defaultLocale => enUS;

  String get languageCode => _languageCode.toLowerCase();
  String get countryCode => _countryCode.toUpperCase();

  String get fullLocaleCode => '$languageCode-$countryCode';
  Locale get locale => Locale(languageCode, countryCode);
}
