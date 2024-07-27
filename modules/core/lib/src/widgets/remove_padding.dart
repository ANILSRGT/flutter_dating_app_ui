import 'package:flutter/material.dart';

@immutable
final class RemovePaddingList {
  const RemovePaddingList._();

  /// Generate a list of widgets with padding.
  /// <br>If a widget is a [RemovePaddingItem], it will not have padding.
  /// <br>Otherwise, it will have padding.
  static List<Widget> generate({
    required EdgeInsets padding,
    required List<Widget> children,
  }) {
    return children.map((child) {
      if (child is RemovePaddingItem) {
        return child;
      }

      return Padding(
        padding: padding,
        child: child,
      );
    }).toList();
  }
}

class RemovePaddingItem extends StatelessWidget {
  const RemovePaddingItem({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
