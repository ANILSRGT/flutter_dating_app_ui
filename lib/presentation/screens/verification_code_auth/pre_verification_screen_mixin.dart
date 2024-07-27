part of 'pre_verification_screen.dart';

mixin PreVerificationScreenMixin on State<PreVerificationScreen> {
  late final PreVerificationScreenArgs _args;
  bool _isFirstBuild = true;

  final TextEditingController _inputController = TextEditingController();

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }

  Future<void> _onContinueButton() async {
    final isCorrect = await showDialog<bool>(
          context: context,
          builder: (_) => VerificationDialog(
            codeLength: 6,
            onEnteredCode: _onEnteredCode,
            resendCode: _sendCode,
          ),
        ) ??
        false;

    if (isCorrect) {
      await Injection.read<AppRouter>().goTo(RoutesEnum.createProfile);
    }
  }

  Future<bool> _onEnteredCode(int code) async {
    return Future.value(code == 123456);
  }

  void _sendCode() {}
}
