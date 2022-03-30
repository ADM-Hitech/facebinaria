import 'package:facebinaria/services/navigation.service.dart';
import 'package:facebinaria/services/setup.service.dart';
import 'package:flutter/material.dart';

class StartupViewModel extends ChangeNotifier {
  final NavigationService _navigationService = appService<NavigationService>();

  Future<void> handleStartup() async {
    await Future.delayed(const Duration(milliseconds: 500));

    _navigationService.navigateToAndRemoveHistory('registrar');
  }
}