import 'package:mobx/mobx.dart';

part 'authentication_page_viewmodel.g.dart';

class AuthenticationPageViewModel = _AuthenticationPageViewModelBase
    with _$AuthenticationPageViewModel;

abstract class _AuthenticationPageViewModelBase with Store {
  @observable
  bool isBusy = false;

  @action
  void changeBusyStatus(bool isBusy) {
    this.isBusy = isBusy;
  }
}
