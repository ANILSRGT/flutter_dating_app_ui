part of 'verification_code_fields.dart';

mixin VerificationCodeFieldsMixin on State<VerificationCodeFields> {
  DateTime? _lastFocusTime;
  late final List<TextEditingController> _controllers = List.generate(
    widget.codeLength,
    (_) => TextEditingController(),
  );
  late final List<FocusNode> _focusNodes = List.generate(
    widget.codeLength,
    (_) => FocusNode(
      onKeyEvent: (node, event) {
        return KeyEventResult.handled;
      },
    ),
  )..first.requestFocus();

  bool keyListener(KeyEvent event) {
    const neededTime = 50;
    final now = DateTime.now();
    final diff = _lastFocusTime?.difference(now).inMilliseconds ?? neededTime;
    if (event is KeyDownEvent && diff.abs() >= neededTime) {
      _lastFocusTime = now;
      final index = _focusNodes.indexWhere((e) => e.hasFocus);
      if (event.logicalKey == LogicalKeyboardKey.backspace) {
        if (index >= 0) {
          _controllers[index].clear();
          if (index != 0) _focusNodes[index - 1].requestFocus();
        }
      } else if (event.logicalKey == LogicalKeyboardKey.numpad0 ||
          event.logicalKey == LogicalKeyboardKey.digit0 ||
          event.logicalKey == LogicalKeyboardKey.numpad1 ||
          event.logicalKey == LogicalKeyboardKey.digit1 ||
          event.logicalKey == LogicalKeyboardKey.numpad2 ||
          event.logicalKey == LogicalKeyboardKey.digit2 ||
          event.logicalKey == LogicalKeyboardKey.numpad3 ||
          event.logicalKey == LogicalKeyboardKey.digit3 ||
          event.logicalKey == LogicalKeyboardKey.numpad4 ||
          event.logicalKey == LogicalKeyboardKey.digit4 ||
          event.logicalKey == LogicalKeyboardKey.numpad5 ||
          event.logicalKey == LogicalKeyboardKey.digit5 ||
          event.logicalKey == LogicalKeyboardKey.numpad6 ||
          event.logicalKey == LogicalKeyboardKey.digit6 ||
          event.logicalKey == LogicalKeyboardKey.numpad7 ||
          event.logicalKey == LogicalKeyboardKey.digit7 ||
          event.logicalKey == LogicalKeyboardKey.numpad8 ||
          event.logicalKey == LogicalKeyboardKey.digit8 ||
          event.logicalKey == LogicalKeyboardKey.numpad9 ||
          event.logicalKey == LogicalKeyboardKey.digit9) {
        if (index >= 0) {
          if (index < widget.codeLength - 1) {
            _controllers[index].text = event.character ?? '';
            _focusNodes[index + 1].requestFocus();
          } else {
            final value = event.logicalKey.keyLabel;
            _controllers[index].text = value;
            if (value.isNotEmpty) {
              final code = _controllers.map((e) => e.text).join();
              final parsedCode = int.tryParse(code) ?? 0;
              widget.onSubmitted(parsedCode);
            }
          }
        }
      }

      return true;
    }

    return false;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    HardwareKeyboard.instance.addHandler(keyListener);
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    for (final focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }
}
