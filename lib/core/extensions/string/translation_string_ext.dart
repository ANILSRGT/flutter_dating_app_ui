part of 'string_ext.dart';

final class _TranslationStringExt {
  const _TranslationStringExt(String value) : _value = value;
  final String _value;

  String get tr => _value.tr();
  String trWithArgs(List<String> args) => _value.tr(args: args);
}
