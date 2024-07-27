part of 'onboarding_page.dart';

mixin _OnboardingPageMixin on State<OnboardingPage> {
  final OnboardingPageViewModel _viewModel = OnboardingPageViewModel();

  List<OnboardingModelConstants> get _onboardingModels =>
      ModelConstants.onboardingModels;

  Future<void> _onCreateAccountButton() async => _goToAuthenticationPage();

  Future<void> _onSignInButton() async => _goToAuthenticationPage();

  Future<void> _goToAuthenticationPage() async {
    await Injection.read<AppRouter>().replaceAll(RoutesEnum.authentication);
  }
}
