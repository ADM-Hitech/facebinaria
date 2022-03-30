import 'package:flutter/material.dart';

class AppProvider extends InheritedWidget {

  const AppProvider({
    Key? key,
    required Widget child
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(AppProvider oldWidget) => true;

  static AppProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppProvider>();
  }
}