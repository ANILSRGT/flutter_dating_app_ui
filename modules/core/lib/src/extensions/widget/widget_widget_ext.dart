part of 'widget_ext.dart';

final class _WidgetWidgetExt {
  const _WidgetWidgetExt(Widget? value) : _value = value;

  final Widget? _value;

  List<Widget> operator *(int count) {
    if (_value == null) {
      return [];
    }

    return List.generate(count, (_) => _value);
  }
}
