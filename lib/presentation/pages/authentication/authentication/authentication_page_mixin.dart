part of 'authentication_page.dart';

mixin _AuthenticationPageMixin on State<AuthenticationPage> {
  // ignore: unused_field
  final AuthenticationPageViewModel _viewModel = AuthenticationPageViewModel();

  void _onUsePhoneNumberButton(VerificationTypes verificationType) {
    Injection.read<AppRouter>().goTo(
      RoutesEnum.preVerification,
      arguments: PreVerificationScreenArgs(
        verificationType: verificationType,
      ),
    );
  }
}
