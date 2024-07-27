// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_page_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OnboardingPageViewModel on _OnboardingPageViewModelBase, Store {
  Computed<int>? _$currentCarouselIndexComputed;

  @override
  int get currentCarouselIndex => (_$currentCarouselIndexComputed ??=
          Computed<int>(() => super.currentCarouselIndex,
              name: '_OnboardingPageViewModelBase.currentCarouselIndex'))
      .value;

  late final _$_currentCarouselIndexAtom = Atom(
      name: '_OnboardingPageViewModelBase._currentCarouselIndex',
      context: context);

  @override
  int get _currentCarouselIndex {
    _$_currentCarouselIndexAtom.reportRead();
    return super._currentCarouselIndex;
  }

  @override
  set _currentCarouselIndex(int value) {
    _$_currentCarouselIndexAtom.reportWrite(value, super._currentCarouselIndex,
        () {
      super._currentCarouselIndex = value;
    });
  }

  late final _$_OnboardingPageViewModelBaseActionController =
      ActionController(name: '_OnboardingPageViewModelBase', context: context);

  @override
  void updateCurrentCarouselIndex(int index) {
    final _$actionInfo =
        _$_OnboardingPageViewModelBaseActionController.startAction(
            name: '_OnboardingPageViewModelBase.updateCurrentCarouselIndex');
    try {
      return super.updateCurrentCarouselIndex(index);
    } finally {
      _$_OnboardingPageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentCarouselIndex: ${currentCarouselIndex}
    ''';
  }
}
