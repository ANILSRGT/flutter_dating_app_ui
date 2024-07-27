// ignore_for_file: library_private_types_in_public_api

part 'calc_int_ext.dart';

extension IntExt on int? {
  _IntExt get ext => _IntExt(this);
}

final class _IntExt {
  const _IntExt(int? value) : _value = value;

  final int? _value;

  _CalcIntExt get calc => _CalcIntExt(_value);
}
