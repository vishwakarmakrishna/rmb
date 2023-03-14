import 'package:flutter/material.dart';

class NavigationManager {
  factory NavigationManager() => instance;
  NavigationManager._();

  @visibleForTesting
  static NavigationManager instance = NavigationManager._();

  @visibleForTesting
  static void resetInstance() {
    instance = NavigationManager._();
  }

  Future<T?> push<T extends Object?>(
    BuildContext context,
    Widget page, {
    RouteSettings? settings,
    bool fullscreenDialog = false,
  }) async {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (context) => page,
        settings: settings,
        fullscreenDialog: fullscreenDialog,
      ),
    );
  }

  Future<T?> pushReplacement<T extends Object?>(
    BuildContext context,
    Widget page, {
    RouteSettings? settings,
    bool fullscreenDialog = false,
  }) async {
    return Navigator.of(context).pushReplacement(
      MaterialPageRoute<T>(
        builder: (context) => page,
        settings: settings,
        fullscreenDialog: fullscreenDialog,
      ),
    );
  }

  Future<void> pop<T extends Object?>(
    BuildContext context, [
    T? value,
  ]) async {
    return Navigator.of(context).pop<T>(value);
  }
}
