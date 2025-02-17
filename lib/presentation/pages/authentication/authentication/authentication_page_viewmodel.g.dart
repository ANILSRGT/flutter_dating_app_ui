// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_page_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthenticationPageViewModel on _AuthenticationPageViewModelBase, Store {
  late final _$isBusyAtom =
      Atom(name: '_AuthenticationPageViewModelBase.isBusy', context: context);

  @override
  bool get isBusy {
    _$isBusyAtom.reportRead();
    return super.isBusy;
  }

  @override
  set isBusy(bool value) {
    _$isBusyAtom.reportWrite(value, super.isBusy, () {
      super.isBusy = value;
    });
  }

  late final _$_AuthenticationPageViewModelBaseActionController =
      ActionController(
          name: '_AuthenticationPageViewModelBase', context: context);

  @override
  void changeBusyStatus(bool isBusy) {
    final _$actionInfo = _$_AuthenticationPageViewModelBaseActionController
        .startAction(name: '_AuthenticationPageViewModelBase.changeBusyStatus');
    try {
      return super.changeBusyStatus(isBusy);
    } finally {
      _$_AuthenticationPageViewModelBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isBusy: ${isBusy}
    ''';
  }
}
