import 'package:dating_app/core/constants/enums/routes_enum.dart';

abstract interface class INavService {
  Future<T?> goTo<T extends Object?>(RoutesEnum route, {Object? arguments});
  void goBack<T extends Object?>({T? result});
  Future<T?> replaceLast<T extends Object?>(
    RoutesEnum route, {
    Object? arguments,
  });
  Future<T?> replaceAll<T extends Object?>(
    RoutesEnum route, {
    Object? arguments,
  });
  void goBackFirst();
}
