import 'package:dating_app/core/constants/localization/locale_keys.g.dart';
import 'package:dating_app/core/extensions/string/string_ext.dart';
import 'package:dating_app/core/theme/itheme.dart';
import 'package:dating_app/core/theme/themes/main/main_theme.dart';

enum ThemesEnum {
  main();

  ITheme get theme {
    return switch (this) {
      ThemesEnum.main => MainTheme(),
    };
  }

  String get name {
    return switch (this) {
      ThemesEnum.main => LocaleKeys.coreThemeThemesMain.extApp.tranlation.tr,
    };
  }
}
