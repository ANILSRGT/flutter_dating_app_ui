import 'package:easy_localization/easy_localization.dart';

part 'translation_string_ext.dart';

// extension StringExt on String? {
//   // ignore: library_private_types_in_public_api
//   _StringNullExt get extApp => _StringNullExt(this);
// }

extension StringNullExt on String {
  // ignore: library_private_types_in_public_api
  _StringExt get extApp => _StringExt(this);
}

// final class _StringNullExt {
//   const _StringNullExt(String? value) : _value = value;
//   final String? _value;
// }

final class _StringExt {
  const _StringExt(String value) : _value = value;
  final String _value;

  _TranslationStringExt get tranlation => _TranslationStringExt(_value);
}
