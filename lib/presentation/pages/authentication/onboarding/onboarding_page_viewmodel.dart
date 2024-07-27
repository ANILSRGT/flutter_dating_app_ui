import 'package:mobx/mobx.dart';

part 'onboarding_page_viewmodel.g.dart';

class OnboardingPageViewModel = _OnboardingPageViewModelBase
    with _$OnboardingPageViewModel;

abstract class _OnboardingPageViewModelBase with Store {
  @observable
  int _currentCarouselIndex = 0;

  @computed
  int get currentCarouselIndex => _currentCarouselIndex;

  @action
  void updateCurrentCarouselIndex(int index) {
    _currentCarouselIndex = index;
  }
}
