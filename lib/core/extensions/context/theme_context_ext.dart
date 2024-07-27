part of 'context_ext.dart';

final class _ThemeContextExt {
  const _ThemeContextExt(BuildContext context) : _context = context;
  final BuildContext _context;

  /// Get the app color based on the current theme
  IAppColor get appColor =>
      _context.watch<ThemeCubit>().state.themeType.theme.appColor;
}
