import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? argument}) {
    return Navigator.of(
      this,
      rootNavigator: true,
    ).pushNamed(routeName, arguments: argument);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(
      this,
      rootNavigator: true,
    ).pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeNamed,
    RoutePredicate predicate, {
    Object? argument,
  }) {
    return Navigator.of(
      this,
      rootNavigator: true,
    ).pushNamedAndRemoveUntil(routeNamed, predicate, arguments: argument);
  }

  void pop() => Navigator.pop(this);
}
