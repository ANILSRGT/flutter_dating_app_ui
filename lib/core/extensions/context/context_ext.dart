import 'package:dating_app/core/theme/iapp_color.dart';
import 'package:dating_app/presentation/blocs/theme/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'size_context_ext.dart';
part 'theme_context_ext.dart';

extension ContextExt on BuildContext {
  // ignore: library_private_types_in_public_api
  _ContextExt get extApp => _ContextExt(this);
}

final class _ContextExt {
  const _ContextExt(BuildContext value) : _value = value;
  final BuildContext _value;

  _SizeContextExt get size => _SizeContextExt(_value);
  _ThemeContextExt get theme => _ThemeContextExt(_value);
}
