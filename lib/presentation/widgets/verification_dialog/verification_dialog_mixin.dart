part of 'verification_dialog.dart';

mixin VerificationDialogMixin on State<VerificationDialog> {
  Timer? _debounceTimer;

  void simulateKeyPress(int number) {
    if (_debounceTimer?.isActive ?? false) return;

    final key = switch (number) {
      1 => LogicalKeyboardKey.digit1,
      2 => LogicalKeyboardKey.digit2,
      3 => LogicalKeyboardKey.digit3,
      4 => LogicalKeyboardKey.digit4,
      5 => LogicalKeyboardKey.digit5,
      6 => LogicalKeyboardKey.digit6,
      7 => LogicalKeyboardKey.digit7,
      8 => LogicalKeyboardKey.digit8,
      9 => LogicalKeyboardKey.digit9,
      _ => LogicalKeyboardKey.digit0,
    };

    final physicalKey = switch (number) {
      1 => PhysicalKeyboardKey.digit1,
      2 => PhysicalKeyboardKey.digit2,
      3 => PhysicalKeyboardKey.digit3,
      4 => PhysicalKeyboardKey.digit4,
      5 => PhysicalKeyboardKey.digit5,
      6 => PhysicalKeyboardKey.digit6,
      7 => PhysicalKeyboardKey.digit7,
      8 => PhysicalKeyboardKey.digit8,
      9 => PhysicalKeyboardKey.digit9,
      _ => PhysicalKeyboardKey.digit0,
    };

    HardwareKeyboard.instance.handleKeyEvent(
      KeyDownEvent(
        logicalKey: key,
        physicalKey: physicalKey,
        character: number.toString(),
        timeStamp: Duration.zero,
      ),
    );

    _debounceTimer = Timer(const Duration(milliseconds: 50), () {
      HardwareKeyboard.instance.handleKeyEvent(
        KeyUpEvent(
          logicalKey: key,
          physicalKey: physicalKey,
          timeStamp: Duration.zero,
        ),
      );
      _debounceTimer = null;
    });
  }

  Future<void> _onCodeSubmitted(int code) async {
    final isCorrect = await widget.onEnteredCode(code);

    if (isCorrect) {
      Injection.read<AppRouter>().goBack(result: isCorrect);
    }
  }
}
